export PATH="$HOME/.rbenv/bin:$PATH"
export SHELL=zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="./bin:$PATH"
export GOPATH="$HOME/.go_packages"
fpath=(~/.zsh/functions $fpath)
autoload -U compinit && compinit
autoload -U promptinit && promptinit

prompt pure

alias aliases='subl -n ~/.zshrc'

export ATOM_REPOS_HOME="$HOME/Projects/atom"

# rails
alias rs='./bin/rails server'
alias rc='./bin/rails console'
alias rdm='./bin/rake db:migrate db:test:clone'
alias devlog='tail -f log/development.log'
alias rr='./bin/rake routes'
alias rdr='./bin/rake db:rollback'
alias cpd='./bin/cap production deploy'

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

alias elastic='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias redis='redis-server /usr/local/etc/redis.conf'

export PATH="$HOME/.bin:$PATH"
export NO_ELASTIC=1
export NO_BETTER_ERRORS=1
export EDITOR='/Users/kir/.bin/subl -n'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/.dotfiles/projects.zsh

# TODO configure
# http://superuser.com/questions/49092/how-to-format-the-path-in-a-zsh-prompt
setopt PROMPT_SUBST
PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%f%(!.%F{red}.)%f '
eval "$(gh alias -s)"
source /Users/kir/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/kir/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# for zsh-history-substring-search
# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch
