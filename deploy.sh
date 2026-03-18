#!/usr/bin/env bash
set -euo pipefail

cargo binstall -y jassbot

sudo cp jassbot.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now jassbot
sudo systemctl restart jassbot
sudo systemctl status jassbot --no-pager
