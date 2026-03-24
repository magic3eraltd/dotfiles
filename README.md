# monodrive

> a minimal, monochromatic i3 setup built around clarity and speed

![screenshot](assets/screenshot.png)

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
| font | JetBrainsMono Nerd Font |

---

## colors

```
bg       #1A1D23
bg-main  #0F1115
bg-hover #2A2F38
border   #3A404C
fg       #C5C8CE
fg-bright #E6E9EF
accent   #E6E9EF
success  #81C784
urgent   #FF5F87
```

---

## install

### 1. clone

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git
```

### 2. install dependencies

```bash
# arch linux
yay -S i3 polybar rofi dunst picom wezterm neovim thunar fastfetch ttf-jetbrains-mono-nerd
```

### 3. apply configs

manually symlink or copy the configs you need from the repo to `~/.config/`.

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
├── Thunar/
└── fastfetch/
```

---

## notes

- colors are a custom scheme — cold whites on dark grays, no warm tones
- no automatic theming, intentionally static
- built on arch linux

---

*screenshot coming soon*
