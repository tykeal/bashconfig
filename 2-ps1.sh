# PS1 manipulation
parse_git_branch() {
  git branch --show-current 2> /dev/null | sed -e 's/\([[:alnum:]].*\)/ (🌴\1)/'
  #parserepo 2> /dev/null
  #parserepo
}

parse_os_cloud() {
  printenv | grep OS_CLOUD | cut -d'=' -f2 | sed -e 's/\([[:alnum:]].*\)/ (⛈  \1)/'
}

export PS1="[\u@\h \W]\[\033[33m\]\$(parse_git_branch)\[\033[96m\]\$(parse_os_cloud)\[\033[00m\]$ "
