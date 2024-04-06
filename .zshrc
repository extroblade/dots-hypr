export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  docker
  npm
  composer
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

eval "$(zoxide init zsh)"

alias eza='eza --icons '
alias cd='z'
alias grep='grep --color=auto'

alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gpo="git pull origin"
alias gpor="git pull --rebase origin"
alias gp='git push'
alias gd='git diff | mate'
alias gb='git branch'
alias gba='git branch -a'

sc() {
  args=( "${@[@]}" )
  su -c "$args"
}
alias tmuxc='tmux new && tmux attach'
alias pokemon="pokemon-colorscripts --no-title -r"
alias pipes='pipes.sh -r -R -p 5'
alias weather='curl https://wttr.in/Ulyanovsk'
