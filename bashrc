#------------------------------------------------------------------------------------
# file:     ~./bashrc (executed by bash(1) for non-login shells.)
# author:   Alexander Barnickel
# modified: 15.12.2012
#------------------------------------------------------------------------------------


# BASIC STUFF -----------------------------------------------------------------------

# If not running interactively, don't do anything
[ -z "$PS1" ] && return
complete -cf sudo
complete -cf man

# ALIASES ---------------------------------------------------------------------------

# Colorfix
alias ls='ls -h --color=auto'
alias grep='grep --color=auto'

# Typos
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias cd..='cd ..'

# Comfort
alias pong='ping -c 3 www.heise.de'
alias shut='sudo shutdown -h now'
#alias shutup='sudo apt-get update && sudo apt-get upgrade -y && sudo shutdown -h now'
#alias reboot='sudo shutdown -r now'
alias fu='sudo pacman -Syu'
alias music='ncmpcpp'

# ?
alias dubstep='echo "main(i){for(i=0;;i++)putchar(((i*(i>>3|i>>11)&43&i>>8))^(i&i>>12|i>>4));}" | gcc -x c - && ./a.out | aplay'
alias dubstep2='echo "main(i){for(i=0;;i++)putchar(((i*(i>>17|i>>9)&46&i>>3))^(i&i>>10|i>>100));}" | gcc -x c - && ./a.out | aplay'


# PROMPT ----------------------------------------------------------------------------

set_prompt_style () {
  local USER_COLOR="\[\033[1;34m\]"   #Light Blue
  local DIR_COLOR="\[\033[1:36m\]"     #Light Grey
  local RESET_COLOR="\[\033[1;37m\]" #White
  local SYMBOL="$"

  if [ `whoami` == "root" ] ; then
    USER_COLOR="\[\033[0;31m\]"       #Light Red
    DIR_COLOR=$USER_COLOR
    SYMBOL="#"
  fi

  PS1="┌─[\[\e[36m\]\h\[\e[0m\]][\[\e[1;32m\]\w\[\e[0m\]]\n└─╼ "

}
set_prompt_style


# FUNCTIONS -------------------------------------------------------------------------

# Extract Files
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.tar.xz)    tar xvJf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x $1     ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *.xz)        unxz $1        ;;
          *.exe)       cabextract $1  ;;
          *)           echo "\`$1': unrecognized file compression" ;;
      esac
  else
      echo "\`$1' is not a valid file"
  fi
}


# MISC ------------------------------------------------------------------------------

archey
