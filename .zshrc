# Environment variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
export EDITOR='nvim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export ANDROID_HOME=$HOME/Library/Android/sdk
export GOPATH=$HOME/go
export GOROOT="/usr/local/Cellar/go/1.12.5/libexec"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$HOME/Android/tools:$PATH"
export PATH="$HOME/Android/platform-tools:$PATH"
export PYENV_ROOT="$HOME/.asdf/plugins/python/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$PATH:$HOME/flutter/bin"
export PATH=$HOME/Library/Android/sdk/tools:$PATH
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH
export LDFLAGS="-L/usr/local/opt/libpq/lib"
export CPPFLAGS="-I/usr/local/opt/libpq/include"
export PKG_CONFIG_PATH="/usr/local/opt/libpq/lib/pkgconfig"
export PATH=/usr/local/opt/ncurses/bin:$PATH
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"
export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"
export PATH=$HOME/.fastlane/bin:$PATH
export JAVA_HOME=$(\asdf where java ${match[1]})

ZSH_THEME="frisk"

plugins=(
  asdf
  brew
  aws
  bundler
  command-not-found
  composer
  copyfile
  django
  git
  autopep8
  aws
  common-aliases
  dircycle
  docker
  kubectl
  mix
  osx
  pod
  python
  thor
  tmux
  vi-mode
  web-search
  yarn
  encode64
  fasd
  gem
  git
  gitfast
  git-extras
  git-flow
  git-flow-avh
  git-hubflow
  github
  gradle
  jsontools
  meteor
  mvn
  ng
  node
  npm
  pip
  pylint
  python
  rails
  redis-cli
  repo
  ruby
  rvm
  ssh-agent
  vagrant
  yarn
  zsh-syntax-highlighting
  zsh-autosuggestions
)

alias gbclean="git remote update origin --prune"
alias lg='lazygit'

tmux attach &> /dev/null

if [[ ! $TERM =~ screen ]]; then
  exec tmux
fi

ulimit -u 1064

eval "$(pyenv virtualenv-init -)"

# Load sources
source $ZSH/oh-my-zsh.sh
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
source $HOME/.asdf/installs/ocaml/4.07.0/opam-init/init.zsh > /dev/null 2> /dev/null || true
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source "${HOME}/.iterm2_shell_integration.zsh"
source $(pyenv root)/completions/pyenv.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
