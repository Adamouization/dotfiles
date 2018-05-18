#!/bin/sh 

PROJECTS_DIR=~/Projects

tmux new-session -s "Main tmux session" -d

# split screen in half vertically
tmux split-window -h

# split first half (left) in half again horizontally
tmux split-window -v -t 0

# split bottom left pane in half vertically
tmux split-window -h -t 2

# move to projects directory and list all projects
tmux send-keys -t 0 "cd $PROJECTS_DIR" C-m
tmux send-keys -t 0 "ls -l" C-m
tmux send-keys -t 1 "cd $PROJECTS_DIR" C-m
tmux send-keys -t 1 "ls -l $PROJECTS_DIR" C-m

# show clock
tmux clock-mode -t 2

# execute top command with a delay of 1 second
tmux send-keys -t 3 "htop" C-m

tmux -2 attach-session -d
