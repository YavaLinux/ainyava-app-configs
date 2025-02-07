export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

plugins=(git zsh-autosuggestions kubectl kubectx kube-ps1 npm argocd rust golang helm docker docker-compose nmap systemd)

source $ZSH/oh-my-zsh.sh

# Ainyava
#
# envs
export QT_QPA_PLATFORMTHEME=gtk2

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# kubectl
export KUBE_EDITOR=nvim
source <(kubectl completion zsh)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
autoload -U colors; colors

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# miniconda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/home/ainyava/.bun/_bun" ] && source "/home/ainyava/.bun/_bun"

# Rust
. "$HOME/.cargo/env" 

# utils
alias wtc='git commit -m "$(curl -s https://whatthecommit.com/index.txt)"'
alias xcopy="xclip -sel clip"
alias xpaste="xclip -o -selection clipboard"
alias 119="curl 'https://api.codebazan.ir/time-date/?td=all'"
alias dfimage="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage"
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"

function nv() {
  alacritty --class NeoVim -e zsh -c "source ~/.zshrc && cd \"$1\" && nvim ." & disown
}
function uvnv() {
  alacritty --class NeoVim -e zsh -c "source ~/.zshrc && uvactivate $1 && cd \"$2\" && nvim ." & disown

}
function uvvenv() {
  uv virtualenv ~/.uv/$1;
}
function uvactivate() {
  source ~/.uv/$1/bin/activate;
}


## Personal Variables
export V2RAY=socks5h://localhost:2080

# Configurations
export PATH=$PATH:~/.local/programs/go/bin:~/.local/bin

# welcome
fortune | cowsay -f /usr/share/cowsay/cows/eyes.cow | centerize | lolcat

