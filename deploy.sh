# !/bin/bash
source ./scripts/utils.sh

if [ $# -eq 0 ]; then
  print_error 'No Arguments'
  exit
fi;

if [ "$1" == "all" ]; then
  cd scripts
  bash ./install_homebrew.sh
  bash ./install_homebrew_apps.sh
  bash ./link_all.sh
  bash ./install_vim.sh
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  cd ..
  zsh
fi;
