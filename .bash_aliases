##############################################################################
# Mantiene:
#           Cristian Andrione
#           cristian.andrione@gmail.com
#
# Archivo: ~/.bash_aliases para .bashrc
#
##############################################################################

alias e='exit'
alias :q='exit'

alias c='clear'
alias o='less'
alias t='tmux'
alias vi='nvim'

alias l='ls -la'
alias ll='ls -l'

alias ..='cd ..'
alias ...='cd ../..'

alias grep='grep --color=auto'

function h { history; }
function l. { ( if test -d "$1";  then cd $1;  fi  &&  ls -ldF .[^\.]*; ); }

HISTTIMEFORMAT="%d/%m/%y %T "

#set -o vi

# Entornos virtuales python
alias pyenv='. $HOME/.pyenv/bin/activate'
alias p='. $HOME/.pyenv/bin/activate'
alias q='deactivate'

alias ipy='ipython3'

# Caminos importantes
alias cdf='cd $HOME/Fuentes'

# Prompt
export PS1="\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[0;33m\]\$(__git_ps1 '->(%s)')\[\033[00m\]\$ "
unset color_prompt force_color_prompt

# IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
