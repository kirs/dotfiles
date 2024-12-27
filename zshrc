
alias g='git'
alias gcm='git checkout master'
alias gp='git push'
alias gst='git status'

# ripgrep is faster than The Silver Searcher but I'm used to type ag
alias ag='rg'

# thx @sirupsen!
alias gbc="git rev-parse --abbrev-ref HEAD"

# Do not share comand history between tabs
setopt nosharehistory

# zsh overrides rm
# unalias rm

alias vi='nvim'
alias vim='nvim'

# Shopify things
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

source ~/.zshenv

first-push() { git push --set-upstream origin $(gbc); dev open pr }


autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b'

setopt PROMPT_SUBST

function git_dirty() {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}

function git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch')'$(git_dirty)
  fi
}

function git_branch_color() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    echo "%F{green}"
  else
    if [[ $(git_dirty) == "*" ]];
    then
      echo "%F{red}"
    else
      echo "%F{yellow}"
    fi
  fi
}
PROMPT='%F{cyan}%n%f%F%f:%F{blue}%~%f $(git_branch_color)$(git_branch_name)%f$ '

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm

# The source is kind of shitty and causes compinit issues
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

dev() { 
  local subcmd=$1
  shift 1;

  cd $(ruby /Users/kir/src/github.com/kirs/fuzzy-proj/cd.rb $@)
}
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/kir/.pyenv/versions/anaconda3-2023.03/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/kir/.pyenv/versions/anaconda3-2023.03/etc/profile.d/conda.sh" ]; then
#         . "/Users/kir/.pyenv/versions/anaconda3-2023.03/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/kir/.pyenv/versions/anaconda3-2023.03/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

