export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="frisk"

plugins=(
  git archlinux asdf aterminal autopep8 aws common-aliases compleat dircycle django docker encode64 fasd gem git gitfast git-extras git-flow git-flow-avh git-hubflow git_remote_branch github gradle jsontools meteor mvn ng node npm pip pyenv pylint python rails redis-cli repo ruby rvm ssh-agent sudo vagrant yarn zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

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
alias gbclean="git remote update origin --prune"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

. $HOME/.asdf/installs/ocaml/4.06.1/opam-init/init.sh > /dev/null 2> /dev/null || true

export ANDROID_HOME=$HOME/android-sdk

export JAVA_HOME=/usr/lib/jvm/java-8-jdk/
export PATH=$PATH:$JAVA_HOME/bin
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/antigen.zsh
export GOPATH=$HOME/.asdf/installs/golang/1.9.4/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
source /home/medsonoliveira/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. $HOME/.asdf/installs/ocaml/4.02.3/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH='/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin':"$PATH"

function pr() {
  local branch=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
  hub pull-request -h $branch -b develop -m $1
}

# tmux attach &> /dev/null
#
# if [[ ! $TERM =~ screen ]]; then
#     exec tmux
# fi


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f $HOME/.asdf/installs/nodejs/8.11.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/medsonoliveira/.asdf/installs/nodejs/8.11.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f $HOME/.asdf/installs/nodejs/8.11.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/medsonoliveira/.asdf/installs/nodejs/8.11.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
