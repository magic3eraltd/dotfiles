#!/usr/bin/env bash

# =============================
# Monodrive Dotfiles Installer
# =============================

REPO_URL="https://github.com/YOUR_USERNAME/dotfiles.git"
BARE_DIR="$HOME/.dotfiles"
BACKUP_DIR="$HOME/.config-backup"

echo "Installing Monodrive dotfiles..."

# 1. Clone the bare repository if it doesn't exist
if [ ! -d "$BARE_DIR" ]; then
    git clone --bare "$REPO_URL" "$BARE_DIR"
else
    echo "Bare repository already exists at $BARE_DIR"
fi

# 2. Set alias to work with the bare repository
alias config="/usr/bin/git --git-dir=$BARE_DIR --work-tree=$HOME"

# 3. Create backup directory for existing conflicting files
mkdir -p "$BACKUP_DIR"

# 4. Checkout files and move any existing conflicting files to backup
config checkout 2>&1 | grep -E "\s+\." | awk '{print $1}' | while read -r file; do
    mkdir -p "$(dirname "$BACKUP_DIR/$file")"
    mv "$HOME/$file" "$BACKUP_DIR/$file"
done

# 5. Checkout all files from the repository
config checkout

# 6. Hide untracked files to avoid showing personal files
config config --local status.showUntrackedFiles no

echo ""
echo "Monodrive dotfiles installed successfully!"
echo "You can now use your dotfiles as they are."
