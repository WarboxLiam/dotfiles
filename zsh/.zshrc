# Source our plugin manager (antidote)
source ~/.antidote/antidote.zsh

# Initialize plugins statically with .zsh_plugins.txt
antidote load

eval "$(starship init zsh)"

export PATH="$PATH:/opt/nvim-linux64/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
