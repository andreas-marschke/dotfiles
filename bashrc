
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -e .bash_export ];then
    . ~/.bash_export
fi
#/home/andreas/devel/branch/usr/share/cmake: ^^
# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
   debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
	xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
	else
	color_prompt=yes
	fi
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

. ~/.bash_alias


# If this is an xterm set the title to user@host:dir
case "$TERM" in
	xterm*|rxvt*)
	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	;;
	*)
	;;
esac

if [ "$color_prompt" = yes ]; then
    if [ "x$PRESENTATION" = "x" ]; then
    	PS1='\[\033[01;33m\]($(date "+%H:%M")) ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@[\[\033[0;31m\]\H\[\033[01;32m\]]\[\033[01;34m\] \w \[\033[01;33m\]$(svn_check)$(git_branch)\[\033[01;35m\]\$>\[\033[00m\] '
    else
	PS1='\u@\h: \w \[\033[01;31m\]$(svn_check)$(git_branch)\[\033[00m\] \$ '
    fi

else
    PS1='${debian_chroot:+($debian_chroot)}\$PS2\u@\h:\w\$ '
fi

#################### various prompts ########################
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\]$(return_value)\[\033[01;33m\]$(date +%H):\[\033[01;33m\]$(date +%M):$(date +%S) \[\033[0;32m\]\d\n\[\033[01;32m\]\u@[\[\033[0;34m\]\H\[\033[01;32m\]]\[\033[01;34m\]<\w>\[\033[0;36m\]-\!-\[\033[01;31m\]$(echo "[$(cur_load)]")\[\033[01;33m\]$(svn_check)$(git_branch)\[\033[01;35m\]\$>\[\033[00m\] '
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]$(date +%H):\[\033[01;33m\]$(date +%M):$(date +%S) \[\033[0;32m\]\d\n\[\033[01;32m\]\u@[\[\033[0;34m\]\H\[\033[01;32m\]]\[\033[01;34m\] \w \[\033[01;33m\]$(svn_check)$(git_branch)\[\033[01;35m\]\$>\[\033[00m\] '
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]$(date +%H):\[\033[01;33m\]$(date +%M):$(date +%S) \[\033[0;32m\]\d\n\[\033[01;32m\]\u@[\[\033[0;34m\]\H\[\033[01;32m\]]\[\033[01;34m\] \w \[\033[01;33m\]$(svn_check)$(git_branch)\[\033[01;35m\]\$>\[\033[00m\] '
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[0;31m\]\H\[\033[01;34m\] \w \[\033[01;33m\]$(svn_check)$(git_branch)\[\033[1;33m\]\$>\[\033[00m\] '
#PS1='${debian_chroot:+($debian_chroot)}\$PS2\u@\h:\w\$ '
#################### various prompts ########################

export PERL_LOCAL_LIB_ROOT="/home/andreas/perl5";
export PERL_MB_OPT="--install_base /home/andreas/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/andreas/perl5";
export PERL5LIB="lib:/home/andreas/perl5/lib/perl5/x86_64-linux-gnu-thread-multi:/home/andreas/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/andreas/perl5/bin:$PATH";
