eval "$(rbenv init -)"
# https://github.com/magicmonty/bash-git-prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# https://medium.com/fusionqa/autocomplete-git-commands-and-branch-names-in-terminal-on-mac-os-x-4e0beac0388a
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


# for mimemagic gem. For some reason this is in /usr/local rather than /opt
export FREEDESKTOP_MIME_TYPES_PATH=/usr/local/homebrew/share/mime/packages/freedesktop.org.xml

alias be='bundle exec'
alias ber='bundle exec rspec'
alias dcu='docker-compose up'
alias dcd='docker-compose up db'
alias rc="git status -s --untracked-files=no --porcelain *.rb |tr -d ' M ' |xargs rubocop"
alias rca="git status -s --untracked-files=no --porcelain *.rb |tr -d ' M ' |xargs rubocop -a"
