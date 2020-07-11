#!/bin/bash
COMMAND="cabal repl --repl-options=-fobject-code"

GHCID="$(tr '\n' ' ' <<-EOF
	ghcid
	--command $(printf "%q" "$COMMAND")
	--restart .lib-built
	--run
	spec
EOF
)"

exec nix-shell --pure --run "$GHCID"

# vi:noexpandtab
