# homerow-config

![The Card Players](https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Les_Joueurs_de_cartes%2C_par_Paul_C%C3%A9zanne.jpg/700px-Les_Joueurs_de_cartes%2C_par_Paul_C%C3%A9zanne.jpg)

*"The Card Players" (1890-1895) by Paul Cezanne -- [Wikipedia](https://en.wikipedia.org/wiki/The_Card_Players)*

**Because mice are for cats, not developers.**

Configuration for [Homerow](https://www.homerow.app/) and [Maccy](https://maccy.app/) on macOS, version-controlled so a fresh install never means 20 minutes clicking through preferences. (Not that clicking is something that happens here.)

## What This Does

Homerow labels every clickable element on screen with keyboard shortcuts, eliminating the need to reach for a mouse. Maccy provides a system-wide clipboard history triggered by the same `M-y` muscle memory used inside Emacs. Together they turn macOS into a keyboard-first operating system.

## What's in Here

`setup.sh` -- A shell script that applies all Homerow and Maccy preferences via `defaults write`. Run it once on a fresh machine and both apps are configured.

## Shortcuts

### Homerow

| Shortcut | Action |
|---|---|
| `Ctrl+Return` | Label all clickable elements on screen |
| `Ctrl+Shift` | Scroll mode |

### Maccy (Clipboard Manager)

| Shortcut | Action |
|---|---|
| `M-y` (`Option+Y`) | Open clipboard history |

The `M-y` binding works seamlessly with the [karabiner-config](https://github.com/pdelfino/karabiner-config) setup: inside Emacs, `M-y` triggers `counsel-yank-pop` from the kill ring; outside Emacs, Karabiner redirects it to Maccy's clipboard history. Same keystroke, same mental model, everywhere.

## Configuration Details

The script configures:

- **Homerow**: Launch at login, US International keyboard layout, non-search activation on `Ctrl+Return`, scroll mode on `Ctrl+Shift`
- **Maccy**: Popup hotkey set to `Ctrl+Option+Cmd+Y` (mapped from `M-y` via Karabiner), paste on selection enabled, 200-item clipboard history

## Installation

```bash
# Install dependencies
brew install maccy
# Homerow: download from https://www.homerow.app/

# Clone and apply config
git clone https://github.com/pdelfino/homerow-config.git
cd homerow-config
./setup.sh

# Restart both apps for changes to take effect
```

## Dependencies

- [Homerow](https://www.homerow.app/) -- Keyboard-driven clicking for macOS
- [Maccy](https://maccy.app/) -- Clipboard manager (`brew install maccy`)
- [Karabiner Elements](https://karabiner-elements.pqrs.org/) -- For the `M-y` remapping to work outside Emacs (see [karabiner-config](https://github.com/pdelfino/karabiner-config))

## Related

- [karabiner-config](https://github.com/pdelfino/karabiner-config) -- Emacs keybindings system-wide on macOS
- [my-shortkeys-config](https://github.com/pdelfino/my-shortkeys-config) -- Emacs-style shortcuts in the browser
- [emacs-config](https://github.com/pdelfino/emacs-config) -- Emacs setup with Ivy, Projectile, Paredit, and more
- [iterm2-config](https://github.com/pdelfino/iterm2-config) -- iTerm2 preferences
- [zshrc](https://github.com/pdelfino/zshrc) -- Shell configuration
- [claude-config](https://github.com/pdelfino/claude-config) -- Claude Code configuration

## License

MIT
