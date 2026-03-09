# Homerow Config

> Because life's too short to move your hands off the home row just to click a button.

My [Homerow](https://www.homerow.app/) configuration, version-controlled so I never have to remember what shortcuts I picked after a fresh macOS install and then spend 20 minutes clicking through preferences. Oh wait — I don't click. I use Homerow.

## What's in here

`setup.sh` — A shell script that applies all my Homerow preferences via `defaults write`. Six lines of config. Infinite hours of mouse avoidance.

## Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl+Return` | Non-search activation (label all clickable things) |
| `Ctrl+Shift` | Scroll mode |

## Usage

```bash
# On a fresh machine (after installing Homerow):
./setup.sh
# Then restart Homerow. That's it. Go touch grass. But not your mouse.
```

## Why

I use [Karabiner Elements](https://karabiner-elements.pqrs.org/) to bring Emacs keybindings everywhere on macOS, and Homerow to click things without a mouse. Together, they form an unholy alliance against RSI and rodent peripherals.

## License

MIT — Feel free to use this config. Your mouse will understand.
