
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="minimal"


## oh my posh
# alguns temas - tokyonight_storm, catppuccin_mocha
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/tokyonight_storm.omp.json)"

# CONFIG PESSOAL DO ohmyposh 
# bubblesboth.toml, zen.toml, bubblesleft.toml, seta.toml
# eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"



# plugins oh my zsh 
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(git)
source $ZSH/oh-my-zsh.sh


#lunar vim
export PATH=/Users/pedrorosa-dev/.local/bin:$PATH
# CONSOLE NINJA 
PATH=~/.console-ninja/.bin:$PATH


# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# iniciar o tmux
# if command -v tmux &> /dev/null; then
#     if [ -z "$TMUX" ]; then
#         # Tenta anexar a uma sessão existente, senão cria uma nova no diretório home
#         tmux attach || (cd ~ && tmux new-session -s Home)
#     fi
# fi


#ALIAS
alias P="~/Projects"
alias SP="~/Projects/Studies-py"
alias S="~/Projects/Studies"
alias SD="~/Projects/Studies/Docker"
alias C="~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias PC="~/Library/Mobile\ Documents/com~apple~CloudDocs/Projects"
alias PH="/Applications/XAMPP/xamppfiles/htdocs/projects"
alias psqlu='psql -U postgres'
alias rn="lvim"
alias cls='clear'
alias live='live-server'
alias ff='fastfetch'
alias reload-zsh="source ~/.zshrc"
alias edit-zsh="lvim ~/.zshrc"
alias lg='lazygit'
alias img="imgcat"
alias tls="tmux list-sessions"
alias TH="tmux attach-session -t home"
alias TN="tmux new-session -s home "
alias taa="tmux attach-session -t "
alias tnn="tmux new-session -s "
alias tks="tmux kill-session -t "
alias gcn="git clone"


# ----- Bat (better cat) -----
alias cat="bat"

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

alias cd="z"


# Dependências de programação 

# node
#Homebrew
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Se for pelo curl
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/danielmac/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# yarn
export YARN_HOME="$HOME/.yarn"
case ":$PATH:" in
  *":$YARN_HOME/bin:"*) ;;
  *) export PATH="$YARN_HOME/bin:$PATH" ;;
esac


# ruby
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/opt/homebrew/opt/ripgrep/bin:$PATH"


# python
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$(pyenv root)/shims:$PATH"

# JAVA 
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# php
# Herd injected PHP 8.3 configuration.
# export HERD_PHP_83_INI_SCAN_DIR="/Users/pedrorosa-dev/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/pedrorosa-dev/Library/Application Support/Herd/bin/":$PATH


# Postgresql
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@17/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@17/include"
