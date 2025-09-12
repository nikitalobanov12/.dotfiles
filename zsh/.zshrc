# ========================
# Oh My Zsh Initialization
# ========================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="typewritten"
plugins=(tmux aliases zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Use typewritten prompt
# autoload -U promptinit; promptinit
# prompt typewritten

# ========================
# Appearance & Colors
# ========================
export TERM="xterm-256color"   # for proper color handling
export TERM=screen-256color    # tmux compatibility
ENABLE_CORRECTION="true"       # auto-correct mistyped commands

# Gruvbox syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[alias]='fg=green'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'
ZSH_HIGHLIGHT_STYLES[command]='fg=green'
ZSH_HIGHLIGHT_STYLES[path]='fg=blue'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'

ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[comment]='fg=white'
# (you can add back more highlight styles if needed, trimmed for readability)

# Gruvbox LS_COLORS
export LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32"

# ========================

# Language / Toolchains
# ========================
# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Neovim (custom build in /opt)
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"



# Opencode
export PATH="$HOME/.opencode/bin:$PATH"

# Local binaries
export PATH="$HOME/.local/bin:$PATH"

# Envman
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# ========================
# Aliases
# ========================

alias reload='source ~/.zshrc'
alias python='python3'
alias vim='nvim'
alias apache ='apache2'

# nnn configuration
export NNN_OPENER=nvim
export NNN_PLUG='n:bulknew;o:fzopen'  # n=create files, o=fuzzy open
export NNN_FIFO=/tmp/nnn.fifo


# Source the cd-on-quit function
source /home/nikita/nnn-5.1/misc/quitcd/quitcd.bash_sh_zsh


# ========================
# Misc
# ========================
fpath=($fpath "$HOME/.zfunctions")
export VI_MODE_SET_CURSOR=false  # disable cursor shape changes

# Default editor
export EDITOR=nvim
export VISUAL=nvim

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

n() {
    if [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    
nn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
