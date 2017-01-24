#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

repo_basedir=$(git rev-parse --show-toplevel)

mkdir -p "${repo_basedir}/.git/hooks/"
cp "${repo_basedir}/.hooks/"* "${repo_basedir}/.git/hooks/"

"${repo_basedir}/.git/hooks/post-checkout"
