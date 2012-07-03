[[ -s "/etc/bashrc" ]] && source "/etc/bashrc"

export PATH="/usr/local/bin:$PATH:./node_modules/.bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.gituser" ]] && source "$HOME/.gituser"
[[ -s "$HOME/.bash_secrets" ]] && source "$HOME/.bash_secrets"

