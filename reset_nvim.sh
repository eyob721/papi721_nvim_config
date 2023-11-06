#!/usr/bin/env bash

# remove configuration
rm -rf ~/.config/nvim/{init.lua,lua/,spell/,*.json,*.toml}

# remove extra files
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
