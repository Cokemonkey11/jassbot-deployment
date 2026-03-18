#!/usr/bin/env bash

set -euxo pipefail
cargo install jassbot
sudo cp /home/pi/.cargo/bin/jassbot /usr/sbin/
sudo systemctl restart jassbot
