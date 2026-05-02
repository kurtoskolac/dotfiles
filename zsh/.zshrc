eval "$(starship init zsh)"
alias ll='ls -la'
export KIND_EXPERIMENTAL_PROVIDER
# Obsidian vault sync
sync-notes() {
  cd ~/Documents/Obsidian\ Vault
  git add .
  git commit -m "sync - $(date '+%Y-%m-%d %H:%M')"
  git push
  echo "✓ vault synced"
}
