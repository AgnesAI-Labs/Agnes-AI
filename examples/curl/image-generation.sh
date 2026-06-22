#!/usr/bin/env bash
set -euo pipefail

: "${AGNES_API_KEY:?Set AGNES_API_KEY before running this example.}"

curl https://apihub.agnes-ai.com/v1/images/generations \
  -H "Authorization: Bearer ${AGNES_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "agnes-image-2.1-flash",
    "prompt": "A clean product render of a compact AI server on a white background",
    "size": "1024x768"
  }'

