# Environment variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
export ZSH_DOTENV_FILE=.dotenv
export EDITOR='nvim'
export SSH_KEY_PATH=$HOME/.ssh/rsa_id
export ANDROID_HOME=$HOME/Library/Android/sdk
export ASDFINSTALLS=$HOME/.asdf/installs
export JAVA_HOME=$(\asdf where java ${match[1]})
# GOV=$(asdf current golang | sed  's/ (set by .*)//g' | tr -d '[:space:]')
# export GOROOT=$ASDFINSTALLS/golang/$GOV/go/

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
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH=/usr/local/opt/ncurses/bin:$PATH
export PATH=$HOME/.fastlane/bin:$PATH
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export CPPFLAGS="-I/usr/local/opt/libpq/include"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export CPPFLAGS="-I/usr/local/opt/krb5/include"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

export PKG_CONFIG_PATH="/usr/local/opt/libpq/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export LDFLAGS="-L/usr/local/opt/libpq/lib"
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export LDFLAGS="-L/usr/local/opt/krb5/lib"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"

ZSH_THEME="frisk"

ZSH_DISABLE_COMPFIX="true"

plugins=(
  asdf
  brew
  aws
  copyfile
  git
  aws
  common-aliases
  dircycle
  docker
  kubectl
  mix
  osx
  pod
  python
  tmux
  vi-mode
  yarn
  git
  gitfast
  git-extras
  git-flow
  git-flow-avh
  git-hubflow
  pip
  pylint
  python
  rails
  ruby
  ssh-agent
  yarn
  zsh-syntax-highlighting
  zsh-autosuggestions
)

function pr() {
  local branch=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
  hub pull-request -h $branch -b develop -m $1 -r "Astrocoders/Core" -a "medson10"
}

function prb() {
  local branch=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
  hub pull-request -h $branch -b $1 -m $2 -r "Astrocoders/Core" -a "medson10"
}

eval "$(zoxide init zsh)"

alias gbclean="git remote update origin --prune"
alias lg='lazygit'
alias gbdmerged="git branch --merged | grep  -v '\\*\\|master\\|develop\\|secondary\\|main' | xargs -n 1 git branch -d"
alias hg='history | grep'

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
source /usr/local/opt/zsh-git-prompt/zshrc.sh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${HOME}/.iterm2_shell_integration.zsh
fpath=(/usr/local/share/zsh-completions $fpath)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
export ERL_AFLAGS="-kernel shell_history enabled"

# opam configuration
test -r ~/.opam/opam-init/init.zsh && . ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
