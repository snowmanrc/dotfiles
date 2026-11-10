
# Environment Variables
export PATH="$PATH:$HOME/.local/bin"

# SSH init

export SSH_AUTH_SOCK="/tmp/ssh-agent.socket"

if ! pidof ssh-agent >/dev/null 2>&1; then
    eval "$(ssh-agent -s -a /tmp/ssh-agent.socket)" >/dev/null 2>&1
    ssh-add ~/.ssh/github >/dev/null 2>&1
fi

