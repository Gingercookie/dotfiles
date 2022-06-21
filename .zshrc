# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/will/.oh-my-zsh"
fpath=($fpath ~/.zsh/completion)

ZSH_THEME="powerlevel10k/powerlevel10k"

# Auto-update frequency
zstyle ':omz:update' frequency 13

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# ZSH Plugins
plugins=(
    docker
    docker-compose
    terraform
    kubectl
    git
)

# Global user settings
source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey '^R' history-incremental-search-backward

alias ls='ls -alh'
alias gp='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias py='python3'
alias vim='nvim'
alias nv='nvim'
alias v='nvim'
alias beer='echo "8J+Nugo=" | base64 -d'
alias cl=clear

# To customize prompt, run 'p10k configure' or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -U +X bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws
