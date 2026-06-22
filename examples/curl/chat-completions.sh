#!/usr/bin/env bash
set -euo pipefail

: "${AGNES_API_KEY:?Set AGNES_API_KEY before running this example.}"

curl https://apihub.agnes-ai.com/v1/chat/completions \
  -H "Authorization: Bearer ${AGNES_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "agnes-2.0-flash",
    "messages": [
      {
        "role": "user",
        "content": "Give me a concise checklist for integrating an OpenAI-compatible API."
      }
    ],
    "stream": false
  }'

