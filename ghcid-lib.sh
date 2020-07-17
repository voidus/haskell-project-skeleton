#!/bin/bash
COMMAND="cabal repl --repl-options=-fno-code"

NOTIFY_LIB_BUILD='System.IO.writeFile ".lib-built" ""'

GHCID="$(tr '\n' ' ' <<-EOF
	ghcid
	--test $(printf "%q" "$NOTIFY_LIB_BUILD")
	--test-message="Notifying test-ghcid..."
	--command $(printf "%q" "$COMMAND")
	lib:haskell-project-skeleton
EOF
)"

exec nix-shell --pure --run "$GHCID"

# vi:noexpandtab
