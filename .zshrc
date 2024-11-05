export ZSH="$HOME/.oh-my-zsh"
export PATH="/home/mustafa/.cache/rebar3/bin:$PATH"
export PATH="/home/mustafa/.mvn/apache-maven-3.9.9/bin:$PATH"
export PATH="$HOME/.nvim/bin:$PATH"
export PATH="/home/mustafa/.encore/bin:$PATH"
export PATH="$HOME/.gleam:$PATH"
export PATH="$HOME/.zig:$PATH"
export PATH="$HOME/.go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export EDITOR=nvim
export VISUAL="$EDITOR"

ZSH_THEME="af-magic"

bindkey '^H' backward-kill-word
bindkey '^y' end-of-line


plugins=(
    git
    zsh-autosuggestions
)

eval "$(zoxide init zsh)"

source $ZSH/oh-my-zsh.sh
source "$HOME/.rye/env"
source $HOME/.cargo/env

alias vim="nvim"
alias air="/home/mustafa/go/bin/air"
alias gb="/home/mustafa/go/bin/go-blueprint"
alias go-blueprint="/home/mustafa/go/bin/go-blueprint"
alias cd="z"
alias ci="zi"
alias t="tmux"


# study stream aliases
# Requires https://github.com/caarlos0/timer to be installed. spd-say should ship with your distro

declare -A pomo_options
pomo_options["work"]="50"
pomo_options["break"]="10"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1
  echo $val | lolcat
  timer ${pomo_options["$val"]}m
  spd-say "'$val' session done"
  fi
}

alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"
. "/home/mustafa/.deno/env"
