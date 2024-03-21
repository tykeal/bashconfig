if [ -z "${SSH_TTY}" ]; then
  # gpg-agent
  if [ ! -f /run/user/"$(id -u)"/gpg-agent.env ]; then
      killall gpg-agent;
      # shellcheck disable=SC2046
      eval $(gpg-agent --daemon --enable-ssh-support > /run/user/$(id -u)/gpg-agent.env);
  fi
  # shellcheck disable=SC1090
  . /run/user/"$(id -u)"/gpg-agent.env

  # ssh authentication component
  # shellcheck disable=SC1090
  # shellcheck disable=SC1091
  # shellcheck disable=SC2086
  source ${HOME}/.gnupg/gpg-agent-wrapper
fi
