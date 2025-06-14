export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.zig/:$PATH"
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export EDITOR=nvim
export VISUAL="$EDITOR"

ZSH_THEME="af-magic"

plugins=(
    git
    zsh-autosuggestions
)

eval "$(zoxide init zsh)"

source $ZSH/oh-my-zsh.sh
. "$HOME/.cargo/env"

alias vim="nvim"
alias pdf="sioyek"
alias img="loupe"
alias cd="z"
alias ci="zi"
alias t="tmux"
alias zen="~/.zen/zen"
alias fm="yazi"

if [ $(ps ax | grep "[s]sh-agent" | wc -l) -eq 0 ] ; then
    eval "$(ssh-agent -s)" > /dev/null
    echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" > "$HOME/.ssh/agent.env"
    echo "export SSH_AGENT_PID=$SSH_AGENT_PID" >> "$HOME/.ssh/agent.env"
    ssh-add "$HOME/.ssh/github" > /dev/null 2>&1
else
    source "$HOME/.ssh/agent.env" > /dev/null
fi

bindkey '^H' backward-kill-word
bindkey '^Y' autosuggest-accept
