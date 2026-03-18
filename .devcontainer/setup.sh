#!/bin/bash
set -e
echo "=== SN13 Testnet Miner Setup ==="
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -e . 2>&1 | tail -5
pipx install bittensor-cli
npm install -g pm2
echo "Setup complete!"
