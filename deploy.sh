#!/usr/bin/env bash
set -euo pipefail

RUSTFLAGS='-C codegen-units=1' nice -n 19 ionice -c 3 taskset -c 0 cargo install jassbot -j1

sudo cp jassbot.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now jassbot
sudo systemctl restart jassbot
sudo systemctl status jassbot --no-pager
