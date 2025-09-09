export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
  zoxide
)

source $ZSH/oh-my-zsh.sh

alias vos="vncviewer localhost:0"

export PATH="$HOME/go/bin/:$PATH"

