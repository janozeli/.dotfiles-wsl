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

alias szsh="source ~/.zshrc"
alias cc="clear"
alias ".."="cd .."
alias ls="eza --header --long --icons --git"
alias cat="bat"
alias zshrc="nvim $HOME/.zshrc"

export PATH="$PATH:$HOME/.scripts"
# Created by `pipx` on 2024-02-19 18:10:33
export PATH="$PATH:/home/janozeli/.local/bin"

# bun completions
[ -s "/home/janozeli/.bun/_bun" ] && source "/home/janozeli/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
