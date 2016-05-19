export SHELL=zsh
eval "$(hub alias -s)"
fpath=(/usr/local/share/zsh/site-functions $fpath)

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="./bin:$PATH"

fpath=(~/.zsh/functions $fpath)

autoload -U compinit && compinit
autoload -U promptinit && promptinit

prompt pure

alias aliases='$EDITOR -n ~/.zshrc'

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
alias vi='nvim'
alias vim='nvim'

# git
alias g='git'
alias gst='git status'
alias gp='git push'
alias gcm='git checkout master'

alias dbundle='ruby -I ~/Projects/opensource/bundler/lib ~/Projects/opensource/bundler/bin/bundle'
alias dbundler='ruby -I ~/Projects/opensource/bundler/lib ~/Projects/opensource/bundler/bin/bundler'

alias elastic='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias redis='redis-server /usr/local/etc/redis.conf'

source ~/.dotfiles/projects.zsh

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
