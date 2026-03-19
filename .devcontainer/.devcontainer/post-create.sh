#!/usr/bin/env bash
set -euo pipefail

echo "==> Enabling Corepack / pnpm"
corepack enable
corepack prepare pnpm@latest --activate

echo "==> Making Plane setup script executable"
chmod +x setup.sh

echo "==> Running Plane setup"
./setup.sh

echo "==> Setup complete"
