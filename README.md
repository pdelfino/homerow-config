# Homerow & Maccy Config

> Because life's too short to move your hands off the home row just to click a button.

My [Homerow](https://www.homerow.app/) and [Maccy](https://maccy.app/) configuration, version-controlled so I never have to remember what shortcuts I picked after a fresh macOS install and then spend 20 minutes clicking through preferences. Oh wait — I don't click. I use Homerow.

## What's in here

`setup.sh` — A shell script that applies all my Homerow and Maccy preferences via `defaults write`. A few lines of config. Infinite hours of mouse avoidance.

## Shortcuts

### Homerow

| Shortcut | Action |
|----------|--------|
| `Ctrl+Return` | Non-search activation (label all clickable things) |
| `Ctrl+Shift` | Scroll mode |

### Maccy (clipboard manager)

| Shortcut | Action |
|----------|--------|
| `M-y` (`Option+Y`) | Open clipboard history |

Works just like Emacs `M-y` (`counsel-yank-pop`): inside Emacs you get the kill ring, outside Emacs you get Maccy's clipboard history. Same muscle memory, everywhere.

## Usage

```bash
# Install
brew install maccy
# Homerow: install from https://www.homerow.app/

# Apply config:
./setup.sh
# Then restart both apps. Go touch grass. But not your mouse.
```

## Why

I use [Karabiner Elements](https://karabiner-elements.pqrs.org/) to bring Emacs keybindings everywhere on macOS, Homerow to click things without a mouse, and Maccy to have an Emacs-like kill ring system-wide. Together, they form an unholy alliance against RSI and rodent peripherals.

## Related configs

Homerow is one piece of the keyboard-driven puzzle. Here are the others:

- [my-karabiner-elements-config](https://github.com/pdelfino/my-karabiner-elements-config) — Emacs keybindings system-wide on macOS
- [emacs-config](https://github.com/pdelfino/emacs-config) — Emacs setup with Ivy, Projectile, Paredit, and more
- [iTerm2-config](https://github.com/pdelfino/iTerm2-config) — iTerm2 preferences
- [zshrc](https://github.com/pdelfino/zshrc) — Shell configuration
- [claude-config](https://github.com/pdelfino/claude-config) — Claude Code configuration

## License

MIT — Feel free to use this config. Your mouse will understand.
