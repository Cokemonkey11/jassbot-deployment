# Gemini Agent Usage

This repository contains the deployment configuration for `jassbot`, a Matrix bot.

## Files

*   `jassbot.service`: A systemd service file that defines how to run `jassbot` as the `pi` user. It ensures the bot restarts automatically and contains the necessary environment variables.
*   `deploy.sh`: A script to build and deploy the `jassbot`. It installs the bot using `cargo binstall`, copies the service file to the systemd directory, and enables/restarts the service.

## Usage

To deploy the bot, run the `deploy.sh` script.
