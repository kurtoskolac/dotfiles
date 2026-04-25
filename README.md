# 🛠️ Workflow Tools

A collection of ZSH utilities I use to automate my daily workflow.

## 📓 Obsidian Sync
This script automates the bi-directional syncing of my Obsidian vault with GitHub. 

### Features:
- **Automatic Staging**: Stages all new and modified notes.
- **Timestamped Commits**: Automatically logs the exact sync time.
- **Push-on-Save**: Pushes changes immediately to keep my second brain updated across devices.

### Usage:
Source the script in your `~/.zshrc`:
```zsh
source ~/folder/dotfiles/zsh/sync-notes.zsh

Just run `sync-notes` from any terminal session.
