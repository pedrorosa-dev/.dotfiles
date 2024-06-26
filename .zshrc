# iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# oh my posh

# alguns temas - tokyonight_storm, catppuccin_mocha
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/tokyonight_storm.omp.json)"

# CONFIG PESSOAL DO ohmyposh 
# bubblesboth.toml, zen.toml, bubblesleft.toml
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/bubblesboth.toml)"

 export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/opt/ripgrep/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

ZSH_THEME="robbyrussell"

# plugins 
plugins=(git zsh-autosuggestions zsh-syntax-highlighting  git-flow web-search)

source $ZSH/oh-my-zsh.sh

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
# if command -v tmux &> /dev/null; then
#     if [ -z "$TMUX" ]; then
#         # Tenta anexar a uma sessão existente, senão cria uma nova no diretório home
#         tmux attach || (cd ~ && tmux new-session -s home)
#     fi
# fi



#lunar vim
export PATH=/Users/pedrorosa-dev/.local/bin:$PATH


#ALIAS
alias P="~/Projects"
alias rn="lvim"
alias cls='clear'
alias live='live-server'
alias neo='neofetch'
alias lg='lazygit'
alias img="viu"
alias tls="tmux list-sessions"
alias taa="tmux attach-session -t "
alias tnn="tmux new-session -s "
alias tks="tmux kill-session -t "


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

export BAT_THEME=tokyonight_night

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

# ---- TheFuck -----

# thefuck alias
eval $(thefuck --alias)
eval $(thefuck --alias fk)

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

alias cd="z"

# CONSOLE NINJA 
PATH=~/.console-ninja/.bin:$PATH




# Dependecias de programação 

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ruby
export PATH="$HOME/.rbenv/shims:$PATH"


# python
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$(pyenv root)/shims:$PATH"

# JAVA 
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
