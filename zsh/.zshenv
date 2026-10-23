
# SSH
ssh-add ~/.ssh/github >/dev/null 2>&1
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# PATH var
export PATH="$PATH:$HOME/.local/bin"

# temporary
noctalia &
