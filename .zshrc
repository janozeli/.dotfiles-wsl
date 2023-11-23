if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

source "$HOME/.scripts/"

alias szsh="source ~/.zshrc"
alias cc="clear"
alias ".."="cd .."
alias ls="eza --header --long --icons --git"
alias cat="bat"
alias uu="sudo dnf update -yq"
alias aa="sudo dnf autoremove -yq"
alias zshrc="nvim $HOME/.zshrc"

