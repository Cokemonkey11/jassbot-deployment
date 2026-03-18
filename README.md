# jassbot-deployment

This repository contains the systemd service and deployment script for `jassbot`.

## Prerequisites

*   Rust and Cargo are installed.
*   `cargo binstall` is installed (`cargo install cargo-binstall`).

## Usage

To deploy or update the bot, run the following script:

```bash
./deploy.sh
```

This will:

1.  Install or update `jassbot` using `cargo binstall`.
2.  Install the systemd service file.
3.  Enable and start the `jassbot` service.
