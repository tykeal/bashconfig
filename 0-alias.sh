alias dnf='sudo dnf'
alias evim='eyaml edit'
alias vim='vimx'

# lftools
alias lftools='/home/tykeal/venv/lftools/bin/lftools'
alias jenkins-jobs='/home/tykeal/venv/jjb/bin/jenkins-jobs'
#
# Jenkins Job Builder
alias jjb='jenkins-jobs --conf /home/tykeal/jjb/jenkins-jobs.conf'

# make sure that remote terminals work as I want them too (proper colors)
# some systems have bad colors for 256 color terminals so force xterm
alias ssh='TERM=xterm /usr/bin/ssh'


alias scorecard='podman run -e GITHUB_AUTH_TOKEN=$(gh auth token) gcr.io/openssf/scorecard:stable --show-details'
