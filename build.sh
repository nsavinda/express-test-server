#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Move into the directory
cd "$SCRIPT_DIR"

pnpm install
pnpm build
