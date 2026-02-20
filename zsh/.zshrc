# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/liam/.zsh/completions:"* ]]; then export FPATH="/home/liam/.zsh/completions:$FPATH"; fi
# Source our plugin manager (antidote)
source /usr/share/zsh-antidote/antidote.zsh 

# Initialize plugins statically with .zsh_plugins.txt
antidote load

eval "$(starship init zsh)"
eval "$(keychain --eval --quiet)"

# Aliases
alias grep="grep --color=always"
alias ls="ls --color=always"

alias glog="git log --oneline --graph --parents --all"

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tmux-sessionizer
export PATH="$PATH:/home/liam/.local/scripts"
bindkey -s ^f "tmux-sessionizer\n"

# pnpm
export PNPM_HOME="/home/liam/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
FNM_PATH="/home/liam/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

eval "$(fnm env --use-on-cd --shell zsh)"

. "$HOME/.local/bin/env"
. "/home/liam/.deno/env"
export PATH="$HOME/bin:$PATH"
