# Support hook for XDG directories specs
# I hate this dot-junk right in my home!

if [ -d "${XDG_CONFIG_HOME}/bash" ] && [ "${SHELL}" = "/bin/bash" ]
then
  . "${XDG_CONFIG_HOME}/bash/rc"
fi
