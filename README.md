# dotfiles

My configuration files

## Environment

macOS Mojave

## Usage

### macOS

#### vim + zsh + tmux + vifm + iterm2

```shell
$ xcode-select --install
$ mkdir Github; cd Github
$ git clone https://github.com/gantheory/dotfiles.git; cd dotfiles
$ ./deploy.sh macos
# add /usr/local/bin/zsh to /etc/shells
$ chsh -s /usr/local/bin/zsh
$ tmux
$ tmux source ~/.tmux.conf
# install tmux plugins: prefix + I
# If plugins of vim are not installed, please execute the following command.
$ vim +PlugInstall +qall
```

#### iTerm2

- Load iTerm2 settings: `Preferences...` => `General` => `Load preferences from a custom folder or URL`

### Vim/Zsh/Tmux only

If you just want to install vim, zsh, or tmux specifically, you can check out README files in the corresponding directory.

### linux

#### vim + zsh + tmux + vifm

```shell
$ mkdir Github; cd Github
$ git clone https://github.com/gantheory/dotfiles.git; cd dotfiles
$ ./deploy.sh linux
# add $HOME/.linuxbrew/bin/zsh to /etc/shells
$ chsh -s /usr/local/bin/zsh
$ tmux
$ tmux source ~/.tmux.conf
# install tmux plugins: prefix + I
# If plugins of vim are not installed, please execute the following command.
$ vim +PlugInstall +qall
```