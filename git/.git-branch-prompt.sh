#bash
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function proml {
  #local BRANCH="\[\e[35m\]"
  #local  RESET="\[\e[0m\]"
  #PS1="$RESET\u@\h:\W$BRANCH\$(parse_git_branch)$RESET\$ "
  PS1='[\[\033[1;34m\]\u@\h:\[\033[0;31m\]\w\[\033[0;32m\]$(parse_git_branch)\[\033[0;30m\]\[\033[0;0m\]]$ '

}

proml

