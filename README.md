Navicat Trial Refresh Script for Linux
This script refresh the trial period of Navicat on Linux systems (specifically tested on Linux Mint) without deleting your saved database connections or user profiles.

## Features
- Resets trial data in dconf registry.
- Removes trial-related hashes from `preferences.json`.
- Preserves the "Profiles" directory (keeps your DB connections safe).
- Clears application cache.

## Prerequisites
The script requires `dconf-cli` to modify system registry keys. You can install it using:

```bash
sudo apt update
sudo apt install dconf-cli

Profiles (Safe): Does not touch ~/.config/navicat/Premium/Profiles.

## How to Use

1. Save the script as `navicat-refresh.sh`.
2. Open your terminal in the directory where the file is located.
3. Grant execution permission:

```bash
chmod +x navicat-refresh.sh

```bash
./navicat-refresh.sh
