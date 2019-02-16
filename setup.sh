#!/usr/bin/env bash
# shellcheck disable=SC2128
SOURCED=false && [ "$0" = "$BASH_SOURCE" ] || SOURCED=true

if ! $SOURCED; then
  set -euo pipefail
  IFS=$'\n\t'
fi

repo_basedir=$(git rev-parse --show-toplevel)

mkdir -p "${repo_basedir}/.git/hooks/"
cp "${repo_basedir}/.hooks/"* "${repo_basedir}/.git/hooks/"

"${repo_basedir}/.git/hooks/post-checkout"
