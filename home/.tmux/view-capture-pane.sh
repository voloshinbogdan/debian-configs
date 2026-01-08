#!/bin/sh

TMPNAME=$(mktemp)

tmux capture-pane -e -J -p -S -100000 > $TMPNAME
tmux display-popup -h 100% -w 100% -E "vim -c 'view $TMPNAME' -c 'AnsiEsc' -c '\$'"

