if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias aliases='subl -n ~/.bash_profile'

# rails
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias rdm='bundle exec rake db:migrate db:test:clone'
alias devlog='tail -f log/development.log'
alias rr='bundle exec rake routes'
alias rdr='bundle exec rake db:rollback'

alias bi='bundle install'

# workflow
alias p='cd ~/Projects/'
alias st='subl'
alias s='subl -n .'

# git
alias g='git'
alias gst='git status'
alias gp='git push'
alias gcm='git checkout master'

alias dbundle='ruby -I ~/Projects/opensource/bundler/lib ~/Projects/opensource/bundler/bin/bundle'

export PATH="$HOME/.bin:$PATH"
export NO_ELASTIC=1
export EDITOR='subl -n'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
