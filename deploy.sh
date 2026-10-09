#!/usr/bin/env bash
# Fetch the resume PDF from R2, then deploy the site.
set -euo pipefail
cd "$(dirname "$0")"

./fetch-resume.sh
[[ -s public/Joshua_Morris_Resume.pdf ]] || { echo "resume PDF missing after fetch; aborting" >&2; exit 1; }

wrangler deploy "$@"
