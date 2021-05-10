# !/bin/bash
cd scripts
source ./utils.sh

if [ $# -eq 0 ]; then
  print_error 'No Arguments'
  exit
fi;

if [ "$1" == "macos" ]; then
  bash ./install_homebrew_macos.sh
  bash ./deploy_useful_homebrew_macos.sh
  bash ./deploy_vim_macos.sh
  bash ./deploy_zsh_macos.sh
  bash ./deploy_tmux_macos.sh
  bash ./deploy_vifm.sh
  bash ./deploy_minimal_homebrew_cask_apps.sh
  bash ./deploy_fonts.sh
  zsh
if [ "$1" == "linux" ]; then
  bash ./install_homebrew_linux.sh
  bash ./deploy_useful_homebrew_linux.sh
  bash ./deploy_vim_linux.sh
  bash ./deploy_zsh_linux.sh
  bash ./deploy_tmux_linux.sh
  bash ./deploy_vifm.sh
  bash ./deploy_minimal_homebrew_cask_apps.sh
  bash ./deploy_fonts.sh
  zsh
elif [ "$1" == "cask" ]; then
  bash ./deploy_homebrew_cask_apps.sh
elif [ "$1" == "vim" ]; then
  bash ./deploy_vim.sh
elif [ "$1" == "zsh" ]; then
  bash ./deploy_zsh.sh
elif [ "$1" == "tmux" ]; then
  bash ./deploy_tmux.sh
elif [ "$1" == "vifm" ]; then
  bash ./deploy_vifm.sh
elif [ "$1" == "fonts" ]; then
  bash ./deploy_fonts.sh
fi;
