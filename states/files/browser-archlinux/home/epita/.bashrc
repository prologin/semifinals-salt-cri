# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  sleep 5;
  exec startx
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
