# monodrive

> A minimal, monochromatic i3 setup built around clarity and speed  
> Maintained by MAGIC (https://github.com/magic3eraltd)

![screenshot](assets/monodrive_screenshot.png)

---

## stack

| role | tool |
|---|---|
| window manager | i3 |
| bar | polybar |
| launcher | rofi |
| notifications | dunst |
| compositor | picom |
| terminal | wezterm |
| editor | neovim |
| file manager | thunar |
| fetch | fastfetch |
| visualizer | cava |
| font | JetBrainsMono Nerd Font |

---

## colors

```
bg        #1A1D23
bg-main   #0F1115
bg-hover  #2A2F38
border    #3A404C
fg        #C5C8CE
fg-bright #E6E9EF
accent    #E6E9EF
success   #81C784
urgent    #FF5F87
```

---

## install

### 1. clone

```bash
git clone https://github.com/magic3eraltd/dotfiles.git
cd dotfiles
```

### 2. install dependencies

```bash
# official repos
sudo pacman -S i3 polybar rofi dunst picom neovim thunar fastfetch udiskie udisks2 ntfs-3g cava cmatrix

# AUR
yay -S wezterm ttf-jetbrains-mono-nerd autotiling
```

### 3. using the installer script (recommended)
```bash
bash install.sh
```
this will:
- backup any existing conflicting configuration files to ~/.config-backup
- checkout all dotfiles into your $HOME
- hide untracked files to avoid showing personal files

### alternative manual bare repository installation
```bash
git clone --bare https://github.com/magic3eraltd/dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

---

## structure

```
~/.config/
├── i3/
├── polybar/
├── rofi/
├── dunst/
├── picom/
├── wezterm/
├── nvim/
├── cava/
├── Thunar/
└── fastfetch/
```

---

## notes

- colors are a custom scheme — cold whites on dark grays, no warm tones
- no automatic theming, intentionally static
- autotiling for automatic window splitting
- built on arch linux
- existing files that conflicted with dotfiles are moved to ~/.config-backup
- private/personal files are excluded via .gitignore

## License

This repository is licensed under the MIT License. See the LICENSE file for details.

© 2026 MAGIC. All rights reserved.
