[[ -s "/etc/bashrc" ]] && source "/etc/bashrc"

export PATH="/usr/local/bin:$PATH:./node_modules/.bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.gituser" ]] && source "$HOME/.gituser"
[[ -s "$HOME/.bash_secrets" ]] && source "$HOME/.bash_secrets"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

sagent()
{
    [ -S "$SSH_AUTH_SOCK" ] || export SSH_AUTH_SOCK="$(< ~/.ssh/ssh-agent.env)"

    # if cached agent socket is invalid, start a new one
    [ -S "$SSH_AUTH_SOCK" ] || {
        eval "$(ssh-agent)"
        echo "$SSH_AUTH_SOCK" > ~/.ssh/ssh-agent.env
    }
}
sagent
