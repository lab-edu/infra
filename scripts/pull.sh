#!/usr/bin/env bash
set -euo pipefail

source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

echo "Pulling latest core/web images from GHCR..."
docker compose pull core web

echo "Done."