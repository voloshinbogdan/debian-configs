#!/bin/sh

tty=$(tmux display-message -p "#{client_tty}")
line=$(tmux list-clients -F "#{client_tty} #{client_height}" | grep "$tty")
height=$(echo "$line" | awk '{print $2}')

if [ "$height" -lt 31 ]; then
  tmux set prefix \`
else
  tmux set prefix C-b
fi
