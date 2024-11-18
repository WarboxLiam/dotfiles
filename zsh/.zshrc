# Source our plugin manager (antidote)
source ~/.antidote/antidote.zsh

# Initialize plugins statically with .zsh_plugins.txt
antidote load

eval "$(starship init zsh)"

# nvim
export PATH="$PATH:/opt/nvim-linux64/bin"

# pnpm
export PNPM_HOME="/home/liam/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PKG_CONFIG=/usr/bin/pkg-config

# Shopify Hydrogen alias to local projects
alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'
