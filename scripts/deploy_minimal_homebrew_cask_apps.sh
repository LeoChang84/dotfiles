#! /bin/bash
source ./utils.sh

print 'Homebrew Tap Cask'
run_cmd 'brew tap homebrew/cask'

print 'Install Minimal Homebrew-Cask Apps'
cask_install 'iterm2'
