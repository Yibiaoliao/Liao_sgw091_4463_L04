# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PRECMD_HOME=/home/student
source $PRECMD_HOME/.local/bin/bash-preexec.sh
source $PRECMD_HOME/.local/bin/bash-pre-capinout.sh
ulimit -f 1000000
