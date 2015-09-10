# start tmux when login
# Mac OS X Tmux
if which tmux 2>&1 >/dev/null; then
    # if no session is started, start a new session
    test -z ${TMUX} && tmux

    # when quitting tmux, try to attach
    while test -z ${TMUX}; do
        tmux attach || break
    done
fi

# Fedora Tmux
if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
