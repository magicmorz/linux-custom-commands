#!/bin/bash
# create directory custom_commands
mkdir -p /home/$(whoami)/custom_commands/
path="/home/$(whoami)/.bashrc"
# add link to custom_commands directory to .bashrc
grep -qxF 'source ~/custom_commands/.my_custom_commands.sh"' $path || echo 'source ~/custom_commands/.my_custom_commands.sh"' >> $path
