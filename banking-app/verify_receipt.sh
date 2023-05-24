#!/bin/bash

# Input: Takes response body of banking-app's /app/receipt from stdin.
# Output: When the verification is successful, it writes "OK" to stdout. Otherwise it writes "Verify failed" to stderr and results in an exit code of 1.

cd "$(dirname "$0")"

set -e

python verify_receipt.py <&0
