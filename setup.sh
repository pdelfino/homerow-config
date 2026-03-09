#!/bin/bash
# Homerow configuration
# https://www.homerow.app/
#
# Run this script to apply Homerow settings on a fresh machine.
# Restart Homerow after running.

set -euo pipefail

echo "Applying Homerow configuration..."

defaults write com.superultra.Homerow launch-at-login -bool true
defaults write com.superultra.Homerow auto-switch-input-source-id -string "com.apple.keylayout.USInternational-PC"
defaults write com.superultra.Homerow enable-hyper-key -bool false
defaults write com.superultra.Homerow non-search-shortcut -string "⌃↩"
defaults write com.superultra.Homerow scroll-shortcut -string "⌃⇧"
defaults write com.superultra.Homerow theme-id -string "original"

echo "Done! Restart Homerow for changes to take effect."
