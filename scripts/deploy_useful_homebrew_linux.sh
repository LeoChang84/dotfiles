#! /bin/bash
source ./utils.sh

print 'Install Useful Homebrew Apps'
brew_install 'pyenv'
brew_install 'tldr'
brew_install 'tree'
brew_install 'watch'

print 'Homebrew Tap Fonts'
run_cmd 'brew tap homebrew/cask-fonts'
cask_install 'font-hack-nerd-font'
