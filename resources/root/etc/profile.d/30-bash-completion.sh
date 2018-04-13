# Check for interactive bash and that we haven't already been sourced
if [ -n "$BASH_VERSION" -a -n "$PS1" -a -z "$BASH_COMPLETION_COMPAT_DIR" ]
then
  # Check for recent enough version of bash.
  bash_v=${BASH_VERSION%.*}
  bash_v_major=${bash_v%.*}
  bash_v_minor=${bash_v#*.}

  if [ $bash_v_major -gt 4 ] || [ $bash_v_major -eq 4 -a $bash_v_minor -ge 1 ]
  then

    if [ -r "${XDG_CONFIG_HOME:-$HOME/.config}/bash/completion" ]
    then
      . "${XDG_CONFIG_HOME:-$HOME/.config}/bash/completion"
    fi

    if shopt -q progcomp && [ -r /usr/share/bash-completion/bash_completion ]
    then
      . /usr/share/bash-completion/bash_completion
    fi
  fi

  unset bash bmajor bminor

fi
