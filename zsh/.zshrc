export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/go/bin/:$PATH"

