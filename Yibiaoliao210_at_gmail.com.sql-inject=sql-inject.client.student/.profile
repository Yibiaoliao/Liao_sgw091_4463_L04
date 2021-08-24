# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
cd
source $HOME/.local/bin/startup.sh
trap "source $HOME/.bash_logout" SIGTERM SIGKILL
id | grep root >>/dev/null
result=$?
if [[ $result == 0 ]];then
   chmod 666 /dev/null
   uid=$(basename $HOME)
   su - $uid
   exit
fi
# mask GTK accessibility bus errors
export NO_AT_BRIDGE=1
export PATH="$PATH:/sbin"
export DISPLAY=:0
