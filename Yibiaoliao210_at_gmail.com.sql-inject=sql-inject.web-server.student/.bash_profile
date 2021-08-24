# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
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
