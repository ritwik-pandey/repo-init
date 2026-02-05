# 🚀 Node.js Project Setup Automation Script

A Bash-based automation tool that simplifies setting up Node.js projects by cloning a Git repository, installing dependencies, and opening the project in an editor.

This script is designed to reduce repetitive setup steps and improve developer onboarding productivity.

---

## ✨ Features

- 📥 Clone a Git repository from a URL
- 🌿 Optional branch selection
- 📦 Automatically installs dependencies if `package.json` exists
- 🛑 Prevents overwriting existing directories
- 🧾 Logs Git output for debugging
- 🧑‍💻 Opens the project in VS Code or Vim
- ✅ Input validation and safe failure handling

---

## 📦 Prerequisites

Make sure the following tools are installed:

- `git`
- `node` and `npm`
- (Optional) `nvm`
- An editor:
  - VS Code (`code`) or
  - Vim (`vim`)

---

## 🔧 Setup

Make the script executable:

```bash
chmod +x setup.sh
