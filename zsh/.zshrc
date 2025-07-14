# Source our plugin manager (antidote)
source /usr/share/zsh-antidote/antidote.zsh 

# Initialize plugins statically with .zsh_plugins.txt
antidote load

eval "$(starship init zsh)"

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
