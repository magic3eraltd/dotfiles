#!/usr/bin/env bash

# =============================
# Monodrive Dotfiles Installer
# =============================

REPO_URL="https://github.com/magic3eraltd/dotfiles.git"
BARE_DIR="$HOME/.dotfiles"
BACKUP_DIR="$HOME/.config-backup"

echo "Installing Monodrive dotfiles..."

if [ ! -d "$BARE_DIR" ]; then
    git clone --bare "$REPO_URL" "$BARE_DIR"
else
    echo "Bare repository already exists at $BARE_DIR"
fi

CONFIG="git --git-dir=$BARE_DIR --work-tree=$HOME"

mkdir -p "$BACKUP_DIR"

$CONFIG checkout 2>&1 | grep -E "^\s+." | awk '{print $1}' | while read -r file; do
    [ -z "$file" ] && continue
    mkdir -p "$(dirname "$BACKUP_DIR/$file")"
    mv "$HOME/$file" "$BACKUP_DIR/$file"
done

$CONFIG checkout

$CONFIG config --local status.showUntrackedFiles no

echo ""
echo "Monodrive dotfiles installed successfully!"
echo "Old configs are backed up in $BACKUP_DIR"
echo "You can now use your dotfiles as they are."
