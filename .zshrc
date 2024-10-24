# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/zexu/.zsh/completions:"* ]]; then export FPATH="/home/zexu/.zsh/completions:$FPATH"; fi
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    bun
    fzf
    zsh-interactive-cd
    zsh-autosuggestions
    zsh-syntax-highlighting
    alias-finder
    colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# alias
alias tsm="transmission-cli"
alias rt="rtorrent"
alias ..="cd .."
alias l="ls -lah"
alias e="eza -lah"

# alias-finder settings
zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':omz:plugins:alias-finder' longer yes # disabled by default
zstyle ':omz:plugins:alias-finder' exact yes # disabled by default
zstyle ':omz:plugins:alias-finder' cheaper yes # disabled by default

# bun completions
[ -s "/home/zexu/.bun/_bun" ] && source "/home/zexu/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
. "/home/zexu/.deno/env"
