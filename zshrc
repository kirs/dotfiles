#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Do not share comand history between tabs
setopt nosharehistory

# zsh overrides rm
unalias rm

alias g='git'
alias gcm='git checkout master'
alias gp='git push'
alias gst='git status'
alias rc='./bin/rails console'
alias rdm='./bin/rake db:migrate'
alias rs='./bin/rails server'
alias vi='nvim'
alias vim='nvim'

# ripgrep is faster than The Silver Searcher but I'm used to ag command
alias ag='rg'

# Shopify things
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
for file in ~/src/github.com/Shopify/cloudplatform/workflow-utils/*.bash; do source ${file}; done
source ~/.zshenv
alias gbc="git rev-parse --abbrev-ref HEAD"
first-push() { git push --set-upstream origin $(gbc); dev open pr }


# truffleruby
function jt { ruby /Users/kir/src/github.com/oracle/truffleruby/tool/jt.rb "$@"; }
export PATH="/usr/local/opt/llvm@4/bin:$PATH"
