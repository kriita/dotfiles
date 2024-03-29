export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH_THEME="robbyrussell"

export GITROOT="~/git"
export TSKS33_HT23="~/Dropbox/Skola/LiU/TSKS33/ht2023"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

# NVM
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# rbenv
#export RBENV_ROOT=/opt/homebrew/opt/rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl@3`"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Postgres@14
export PATH="${HOMEBREW_PREFIX}/opt/postgresql@14/bin:$PATH"
export LDFLAGS="-L${HOMEBREW_PREFIX}/opt/postgresql@14/lib"
export CPPFLAGS="-I${HOMEBREW_PREFIX}/opt/postgresql@14/include"
export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/opt/postgresql@14/lib/pkgconfig"
export CFLAGS="-Wno-error=implicit-function-declaration"

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# openssl
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

# openssl@3
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

# libpq
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

# libxml
export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libxml2/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libxml2/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libxml2/lib/pkgconfig"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# OpenVPN
export PATH="/opt/homebrew/opt/openvpn/sbin:$PATH"

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Manually set lang environment
export LANG=en_US.UTF-8

# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
  export VISUAL="vim"
else
  export EDITOR="nvim"
  export VISUAL="nvim"
fi

# Export PATH
export PATH
#. "$HOME/.cargo/env"
