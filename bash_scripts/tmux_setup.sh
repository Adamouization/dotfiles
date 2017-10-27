#!/bin/sh 
tmux new-session -s "Adam Jaamour Session 1" -d
tmux split-window -h
tmux -2 attach-session -d
