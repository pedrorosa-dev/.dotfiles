export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/opt/ripgrep/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="$PATH:/Users/pedrorosa-dev/.yarn/bin"
export PATH="$PATH:/Users/pedrorosa-dev/.bun/bin"
export PATH="$PATH:/Users/pedrorosa-dev/Library/pnpm/global/5/node_modules"
export PATH="$PATH:/Users/pedrorosa-dev/node_modules/.bin"


ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"


## oh my posh
# alguns temas - tokyonight_storm, catppuccin_mocha
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/takuya.omp.json)"

# CONFIG PESSOAL DO ohmyposh 
# bubblesboth.toml, zen.toml, bubblesleft.toml, seta.toml
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/arrowboth.toml)"



# plugins oh my zsh 
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(git git-flow web-search)
source $ZSH/oh-my-zsh.sh


#lunar vim
export PATH=/Users/pedrorosa-dev/.local/bin:$PATH
# CONSOLE NINJA 
PATH=~/.console-ninja/.bin:$PATH
# iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# iniciar o tmux
if command -v tmux &> /dev/null; then
    if [ -z "$TMUX" ]; then
        # Tenta anexar a uma sessão existente, senão cria uma nova no diretório home
        tmux attach || (cd ~ && tmux new-session -s Home)
    fi
fi


#ALIAS
alias P="~/Projects"
alias C="~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias PC="~/Library/Mobile\ Documents/com~apple~CloudDocs/Projects"
alias PH="/Applications/XAMPP/xamppfiles/htdocs/projects"
alias psqlu='psql -U postgres'
alias rn="lvim"
alias cls='clear'
alias live='live-server'
alias neo='neofetch'
alias lg='lazygit'
alias y='yazi'
alias img="imgcat"
alias tls="tmux list-sessions"
alias taa="tmux attach-session -t "
alias tnn="tmux new-session -s "
alias tks="tmux kill-session -t "
alias gcn="git clone"


# ---- FZF -----

eval "$(fzf --zsh)"

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

source ~/fzf-git.sh/fzf-git.sh


# ----- Bat (better cat) -----
alias cat="bat"

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

# ---- TheFuck -----

# thefuck alias
eval $(thefuck --alias)
eval $(thefuck --alias fk)

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

# alias cd="z"


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


# ruby
export PATH="$HOME/.rbenv/shims:$PATH"


# python
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$(pyenv root)/shims:$PATH"

# JAVA 
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# php

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/pedrorosa-dev/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/pedrorosa-dev/Library/Application Support/Herd/bin/":$PATH


