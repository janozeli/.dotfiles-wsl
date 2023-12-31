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

export PATH="$HOME/.asdf/installs/flutter/bin:$PATH"
export PATH="$HOME/.asdf/installs/rust/1.74.0/bin:$PATH"
export PATH="$HOME/.scripts:$PATH"

alias szsh="source ~/.zshrc"
alias cc="clear"
alias ".."="cd .."
alias ls="eza --header --long --icons --git"
alias cat="bat"
alias zshrc="nvim $HOME/.zshrc"


