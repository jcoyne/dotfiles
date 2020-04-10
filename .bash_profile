eval "$(rbenv init -)"
# https://github.com/magicmonty/bash-git-prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# https://sourabhbajaj.com/mac-setup/BashCompletion/
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

alias be='bundle exec'
alias ber='bundle exec rspec'
alias dcu='docker-compose up'
alias dcd='docker-compose up db'
