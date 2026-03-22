Navicat Trial Reset Script for Linux
This script resets the trial period of Navicat on Linux systems (specifically tested on Linux Mint) without deleting your saved database connections or user profiles.

Features
Resets trial data in dconf registry.

Removes trial-related hashes from preferences.json.

Preserves the "Profiles" directory (keeps your DB connections safe).

Clears application cache.

Prerequisites
The script requires dconf-cli to modify system registry keys. You can install it using:

Bash
sudo apt update
sudo apt install dconf-cli
How to Use
Save the script as navicat-reset.sh.

Open your terminal in the directory where the file is located.

Grant execution permission:

Bash
chmod +x navicat-reset.sh
Run the script:

Bash
./navicat-reset.sh
Technical Details
The script targets the following components:

dconf: Resets keys at /com/premiumsoft/navicat-premium/.

preferences.json: Uses sed to remove unique trial identifiers.

Cache: Deletes the ~/.cache/navicat directory.

Profiles (Safe): Does not touch ~/.config/navicat/Premium/Profiles.
