# Gemini Agent Usage

This repository contains the deployment configuration for `jassbot`, a Matrix bot.

## Files

*   `jassbot.service`: A systemd service file that defines how to run `jassbot`. It ensures the bot restarts automatically.
*   `redeploy.sh`: A script to build and redeploy the `jassbot`. It installs the bot using `cargo`, moves the binary to the system path, and restarts the service.
*   `jassbot.service.d/override.conf`: A systemd override file to provide environment variables to the `jassbot` service. It is used here to configure the bot's password.

## Usage

To redeploy the bot, run the `redeploy.sh` script.

**Note:** The `jassbot.service.d/override.conf` file contains local modifications (the password) that are not checked into the repository.
