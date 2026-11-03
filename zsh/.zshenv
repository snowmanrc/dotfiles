
# Environment Variables
export PATH="$PATH:$HOME/.local/bin"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Shell Init
INIT="/tmp/zsh-init"

if [[ ! -f "$INIT" ]]; then
    eval "$(ssh-agent -s)" >/dev/null 2>&1
    ssh-add ~/.ssh/github >/dev/null 2>&1

    touch "$INIT"
fi


