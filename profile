# Sample .profile for SuSE Linux
# rewritten by Christian Steinruecken <cstein@suse.de>
#
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc; this is particularly
# important for language settings, see below.

test -z "$PROFILEREAD" && . /etc/profile || true

# Most applications support several languages for their output.
# To make use of this feature, simply uncomment one of the lines below or
# add your own one (see /usr/share/locale/locale.alias for more codes)
# This overwrites the system default set in /etc/sysconfig/language
# in the variable RC_LANG.
#
export LANG=de_DE.UTF-8		# uncomment this line for German output
#export LANG=fr_FR.UTF-8	# uncomment this line for French output
#export LANG=es_ES.UTF-8	# uncomment this line for Spanish output
export EDITOR=/usr/bin/vi
# Some people don't like fortune. If you uncomment the following lines,
# you will have a fortune each time you log in ;-)

if [ -x /usr/bin/fortune ] ; then
    echo
    /usr/bin/fortune
    echo
fi

if [ -x ~/.bashrc ] ; then
   . .bashrc
fi

# Add the following to your shell init to set up gpg-agent automatically for every shell
if [ -f ~/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
    source ~/.gpg-agent-info
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --write-env-file ~/.gpg-agent-info)
fi
