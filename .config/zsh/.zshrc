# cd without using cd
setopt autocd

# Allow using regex with *
setopt extendedglob

# Sort filenames numerically
setopt numericglobsort

# Do not beep
setopt nobeep

# Case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Partial match highlighting
zstyle -e ':completion:*:default' list-colors \
  'reply=("${PREFIX:+=(#bi)($PREFIX:t)()*==34=34}:${(s.:.)LS_COLORS}")'

# History
setopt append_history         # Append, not replace
setopt inc_append_history     # Immediately append history
setopt hist_ignore_dups       # Do not show dupes in history
setopt hist_ignore_space      # Ignore commands starting with space
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history

# Start Homebrew
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# Start rbenv
eval "$(rbenv init -)"

# Load zsh-auto-completion
source /Users/kriita/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load aliases
source $ZDOTDIR/.zshalias
# Initialize oh-my-zsh related things
source $ZDOTDIR/.ohmyzsh
# Load custom functions
source $ZDOTDIR/custom-functions.sh

# Set vim bindings
bindkey -v

# Map Ctrl+a to move to beggining of line
bindkey "^A" beginning-of-line
# Map Ctrl+e to move to the end of line
bindkey "^E" end-of-line
# Map Ctrl+b to move to the previous word
bindkey "^B" backward-word
# Map Ctrl+f to move to the next word
bindkey "^F" forward-word

