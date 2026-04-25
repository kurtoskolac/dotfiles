# Obsidian Vault Sync Utility
sync-notes() {
  # ( ) creates a subshell: everything inside stays inside.
  # When it's done, you are still exactly where you started.
  (
    # Move to the vault (The \ handles the space in the folder name)
    cd ~/Documents/Obsidian\ Vault || { echo "❌ Vault not found"; return 1; }

    echo "📦 Staging changes..."
    git add .

    # Only commit if there's actually something new to save
    if [[ -n $(git status -s) ]]; then
      local current_time=$(date "+%Y-%m-%d %H:%M")
      git commit -m "sync: $current_time"
      
      echo "🚀 Pushing to GitHub..."
      git push
      echo "✅ Vault synced successfully!"
    else
      echo "✨ Nothing new to sync. Vault is already up to date."
    fi
  )
}
