export TERM='xterm-256color'

bindkey -e
setopt interactivecomments

autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias history="history 0"

HISTSIZE=9999
SAVEHIST=9999
HISTFILE=~/.zsh_history
setopt histignorealldups sharehistory
setopt hist_ignore_dups
setopt hist_verify

. "$HOME/.profile"

alias gdb='gdb -q'
alias ls='eza'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

alias e='$EDITOR'
alias ll='ls -la'
alias lg='lazygit'

export MANPAGER='nvim +Man!'

precmd() { precmd() { echo } }
PROMPT=$'%F{#889299}%n%F{#3c444c}@%B%F{#889299}%M%F{#677887}:%F{#9baeb3}%~\n%f%F{#9baeb3}%#%f%b '
RPROMPT='%B%(?.%F{#9baeb3}0.%F{#9baeb3}%?) %F{#9baeb3}%D{%H:%M}%f%b'

ulimit -s unlimited
ulimit -u unlimited
ulimit -n unlimited

export PATH=$PATH:/home/llylithe/.spicetify
