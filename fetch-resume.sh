#!/usr/bin/env bash
# Pull the resume PDF from R2 into public/ so wrangler uploads it with the site.
# Run before `wrangler deploy` (or before previewing locally on a fresh clone).
set -euo pipefail
cd "$(dirname "$0")"

wrangler r2 object get my-bucket/Joshua_Morris_Resume.pdf \
  --remote --file public/Joshua_Morris_Resume.pdf
