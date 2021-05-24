export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

if command -v pyenv 1>/dev/null 2>&1; 
then
  eval "$(pyenv init -)"
fi

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

alias pip=/usr/local/bin/pip3


