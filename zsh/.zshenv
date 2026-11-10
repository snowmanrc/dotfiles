
# Environment Variables
export PATH="$PATH:$HOME/.local/bin"

# Shell Init

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

if ! pidof ssh-agent >/dev/null 2>&1; then
    eval "$(ssh-agent -s)" >/dev/null 2>&1
    ssh-add ~/.ssh/github >/dev/null 2>&1
fi

