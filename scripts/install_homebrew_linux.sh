#! /bin/bash
source ./utils.sh

which -s brew
PROFILE_DIR=$HOME'/.profile'
BREW_SHELLENV_DIR='$('$HOME'/.linuxbrew/bin/brew shellenv)'
if [[ $? != 0 ]] ; then
    print 'Install Homebrew'
    run_cmd '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
    run_cmd 'echo 'eval "'$BREW_SHELLENV_DIR'"' >> $PROFILE_DIR'
    run_cmd 'eval "$BREW_SHELLENV_DIR"'
else
    print 'Update Homebrew'
    brew update
  fi
