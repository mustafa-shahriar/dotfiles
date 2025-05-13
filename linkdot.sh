#!/bin/bash

set -e

# Get the folder name from the argument
name="$1"

if [ -z "$name" ]; then
  echo "Usage: $0 <folder-or-file-name>"
  exit 1
fi

dotfiles_dir="$HOME/dotfiles"

# Handle .dotfiles (like .zshrc)
if [[ "$name" == .* ]]; then
  target="$HOME/$name"
  source="$dotfiles_dir/$name"
else
  target="$HOME/.config/$name"
  source="$dotfiles_dir/$name"
fi

# Check if the target already exists
if [ -e "$target" ] || [ -L "$target" ]; then
  echo "Target $target already exists. Skipping link creation."
  exit 0
fi

# Create the symlink
ln -s "$source" "$target"
echo "Linked $source → $target"
