# Git Setup Script

A lightweight Bash script to automate the process of cloning a Git repository and immediately installing its Node.js dependencies. It includes error handling, logging, and support for NVM (Node Version Manager).

## Features

- **Argument Validation:** Checks if a URL is provided and ensures it ends in `.git`.
- **Pre-flight Checks:** Verifies that `git` is installed before proceeding.
- **Safe Cloning:** Prevents overwriting if the repository folder already exists.
- **Logging:** Redirects `git clone` output to `/tmp/file.log` to keep the terminal clean.
- **NVM Integration:** Explicitly loads NVM to ensure `npm` works inside the script environment.
- **Auto-Install:** Automatically detects `package.json` and runs `npm install`.

## Prerequisites

- **Bash Shell:** Linux or macOS.
- **Git:** Must be installed on the system.
- **NVM:** The script assumes NVM is installed in `~/.nvm`.

## Installation

1. Save the script (e.g., as `gitsetup.sh`).
2. Give the script execution permissions:

```bash
chmod +x gitsetup.sh