# Git Repository Setup Script

This Bash script automates cloning a Git repository and installing Node.js dependencies when applicable.

It validates the input, checks required commands, clones the repository, and runs `npm install` if a `package.json` file is found.

---

## Features

- Validates required commands (`git`)
- Accepts only `.git` repository URLs
- Prevents overwriting existing directories
- Clones the repository and logs output
- Automatically installs Node.js dependencies if detected
- Supports `nvm` if installed

---

## Prerequisites

Ensure the following are installed:

- **git**
- **npm** (required only if the project uses Node.js)
- **nvm** (optional)

---

## Usage

```bash
./script.sh <git-repository-url>

Example

./script.sh https://github.com/username/project.git

Script Workflow

    Checks if an argument is provided

    Validates that the repository URL ends with .git

    Confirms git is installed

    Clones the repository

    Moves into the cloned directory

    Runs npm install if package.json exists

Logging

Git clone output is saved to:

/tmp/file.log

This helps with debugging if cloning fails.
Error Handling

The script exits with an error if:

    No argument is provided

    The URL does not end in .git

    The repository directory already exists

    git is not installed

    Cloning fails

Notes

    If no package.json file is found, dependency installation is skipped.

    The script safely exits on any critical failure.

    nvm is automatically sourced if available.