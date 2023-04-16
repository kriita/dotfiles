# cd without using cd
setopt autocd

# Allow using regex with *
setopt extendedglob

# Sort filenames numerically
setopt numericglobsort

# Do not beep
setopt nobeep

# Start pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Start rbenv
eval "$(rbenv init -)"

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
