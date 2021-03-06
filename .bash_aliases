##############################################################################
# Mantiene:
#           Cristian Andrione
#           cristian.andrione@gmail.com
#
# Archivo: ~/.bash_aliases para .bashrc
#
##############################################################################

# super user
alias _='sudo'

# exit
alias e='exit'
alias E='exit'
alias :q='exit'

alias t='tmux'
alias n='nano'

alias l='ls -lah'
alias ll='ls -lh'

alias ..='cd ..'
alias ...='cd ../..'

alias grep='grep --color=auto'

function h { history; }
function l. { ( if test -d "$1";  then cd $1;  fi  &&  ls -ldF .[^\.]*; ); }

HISTTIMEFORMAT="%d/%m/%y %T "

# important path
alias cdb='cd $HOME/.local/bin/'

# Prompt
export PS1="\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[1;33m\]\$(__git_ps1 '->(%s)')\[\033[00m\]\$ "
unset color_prompt force_color_prompt

# IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# alias git
alias gs='git status'
alias gl='git log --oneline --decorate --graph --all'

# Language aliases
alias rb='ruby'
alias py='python3'
alias ipy='ipython'
# mosml con rlwrap
alias mosml='rlwrap mosml -P full'
