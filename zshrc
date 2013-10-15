export PATH="$HOME/.rbenv/bin:$PATH"
export SHELL=zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

fpath=(~/.zsh/functions $fpath)
autoload -U compinit && compinit

alias aliases='subl -n ~/.zshrc'

# rails
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias rdm='bundle exec rake db:migrate db:test:clone'
alias devlog='tail -f log/development.log'
alias rr='bundle exec rake routes'
alias rdr='bundle exec rake db:rollback'
alias cpd='bundle exec cap production deploy'

alias git='hub'
alias gx'gitx'

alias bi='bundle install'

# workflow
alias st='subl'
alias s='subl -n .'

# git
alias g='git'
alias gst='git status'
alias gp='git push'
alias gcm='git checkout master'

alias dbundle='ruby -I ~/Projects/opensource/bundler/lib ~/Projects/opensource/bundler/bin/bundle'
alias dbundler='ruby -I ~/Projects/opensource/bundler/lib ~/Projects/opensource/bundler/bin/bundler'

export PATH="$HOME/.bin:$PATH"
export NO_ELASTIC=1
export EDITOR='subl -n'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/.dotfiles/projects.zsh

# TODO configure
# http://superuser.com/questions/49092/how-to-format-the-path-in-a-zsh-prompt
setopt PROMPT_SUBST
PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%f%(!.%F{red}.)%f '
