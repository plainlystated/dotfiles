[[ -s "/etc/bashrc" ]] && source "/etc/bashrc"

export PATH="/usr/local/bin:$PATH:./node_modules/.bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.gituser" ]] && source "$HOME/.gituser"
[[ -s "$HOME/.bash_secrets" ]] && source "$HOME/.bash_secrets"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

