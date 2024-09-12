# disable software flow-control (it's not particularly useful nowdays)
# this enables the ability to do forward search using ctrl-s
[[ $- == *i* ]] && stty -ixon
