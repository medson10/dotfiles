export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="frisk"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "frisk" "maran" )

# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
  git archlinux asdf aterminal autopep8 aws common-aliases compleat dircycle django docker encode64 fasd gem git gitfast git-extras git-flow git-flow-avh git-hubflow git_remote_branch github gradle jsontools meteor mvn ng node npm pip pyenv pylint python rails redis-cli repo ruby rvm ssh-agent sudo vagrant yarn zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vi'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias yas="yaourt -S"
alias yar="yaourt -R"
alias yaup="yaourt -Syu --aur"
alias paup="sudo pacman -Syyu"
alias st="subl3"
alias stt="subl3 ."

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

. /home/medson/.asdf/installs/ocaml/4.06.0/opam-init/init.sh > /dev/null 2> /dev/null || true

export ANDROID_HOME=/home/medson/android-sdk

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/medson/.sdkman"
[[ -s "/home/medson/.sdkman/bin/sdkman-init.sh" ]] && source "/home/medson/.sdkman/bin/sdkman-init.sh"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME=/usr/lib/jvm/java-8-jdk/
export PATH=$PATH:$JAVA_HOME/bin
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/antigen.zsh
export GOPATH=$HOME/.asdf/installs/golang/1.9.4/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
source /home/medson/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. /home/medson/.asdf/installs/ocaml/4.02.3/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH='/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin':"$PATH"

function pr() {
  local branch=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
  hub pull-request -h $branch -b develop -m $1
}

tmux attach &> /dev/null

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
