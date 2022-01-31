#!/usr/bin/env nix-shell
#!nix-shell -i bash -p curl jq common-updater-scripts nixUnstable gnused

set -eu
version="$(curl -sL "https://api.github.com/repos/lambdaisland/funnel/tags" | jq '.[].name' --raw-output | sort -V | tail -1)"
curl -OsL "https://raw.githubusercontent.com/lambdaisland/funnel/${version}/deps.edn"
sed -i "s/version = \"[0-9\.]+\";/version = \"${version:1}\"/" flake.nix
nix run github:hlolli/clj2nix -- deps.edn deps.nix -A:native-image
rm deps.edn
