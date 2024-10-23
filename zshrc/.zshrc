# exports
export ZSH="$HOME/.oh-my-zsh"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

eval "$(fzf --zsh)"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

eval $(thefuck --alias)

eval "$(zoxide init zsh)"

[ -s "/home/taha/.bun/_bun" ] && source "/home/taha/.bun/_bun"

# aliases 
alias ls="eza --color=always --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias cd="z"
alias fetch="fastfetch"
alias vim="nvim"
export PATH="/home/taha/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/taha/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
