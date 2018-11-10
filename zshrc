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

# zsh overrides rm
unalias rm

alias git='hub'
alias g='hub'
alias gcm='git checkout master'
alias gp='git push'
alias gst='git status'
alias rc='./bin/rails console'
alias rdm='./bin/rake db:migrate'
alias rs='./bin/rails server'
alias vi='nvim'
alias vim='nvim'
alias ag='rg'

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
for file in ~/src/github.com/Shopify/cloudplatform/workflow-utils/*.bash; do source ${file}; done
