#!/bin/bash
# Homerow & Maccy configuration
# https://www.homerow.app/
# https://maccy.app/
#
# Run this script to apply settings on a fresh machine.
# Restart both apps after running.

set -euo pipefail

# --- Homerow ---
echo "Applying Homerow configuration..."

defaults write com.superultra.Homerow launch-at-login -bool true
defaults write com.superultra.Homerow auto-switch-input-source-id -string "com.apple.keylayout.USInternational-PC"
defaults write com.superultra.Homerow enable-hyper-key -bool false
defaults write com.superultra.Homerow non-search-shortcut -string "⌃↩"
defaults write com.superultra.Homerow scroll-shortcut -string "⌃⇧"
defaults write com.superultra.Homerow theme-id -string "original"

# --- Maccy (clipboard manager) ---
echo "Applying Maccy configuration..."

# Ctrl+Option+Cmd+Y as popup hotkey (triggered via Karabiner remapping Option+Y outside Emacs)
defaults write org.p0deje.Maccy KeyboardShortcuts_popup -string '{"carbonModifiers":6400,"carbonKeyCode":16}'
# Paste immediately on selection instead of just copying
defaults write org.p0deje.Maccy pasteByDefault -bool true
# Keep 200 items in clipboard history
defaults write org.p0deje.Maccy historySize -int 200

echo "Done! Restart Homerow and Maccy for changes to take effect."
