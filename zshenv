#
# Defines environment variables.
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/src/bin:$PATH"

export EDITOR=nvim

# export DISABLE_SPRING=1
export GOPATH=$HOME

# https://medium.com/@sidneyliebrand/how-fzf-and-ripgrep-improved-my-workflow-61c7ca212861
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
