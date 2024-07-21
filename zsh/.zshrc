# Source our plugin manager (antidote)
source ~/.antidote/antidote.zsh

# Initialize plugins statically with .zsh_plugins.txt
antidote load

eval "$(starship init zsh)"

export PATH="$PATH:/opt/nvim-linux64/bin"
