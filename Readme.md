# 🔗 Dotfiles Symlink Script

This script creates symbolic links from your `~/dotfiles` directory into appropriate locations like `~/.config/` or your home directory (`~`), based on the type of file or folder.

## 📦 Usage

```bash
./linkdot.sh <name>
```

## 📦 Example
```
./linkdot.sh nvim        # Links ~/dotfiles/nvim → ~/.config/nvim
./linkdot.sh alacritty   # Links ~/dotfiles/alacritty → ~/.config/alacritty
./linkdot.sh .zshrc      # Links ~/dotfiles/.zshrc → ~/.zshrc
```
