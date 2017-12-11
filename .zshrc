# history
HISTFILE=${HOME}/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.

# prompt
autoload -U promptinit; promptinit
prompt pure

# auto completions
fpath=(${HOME}/.zsh/completion /usr/local/share/zsh-completions $fpath)
autoload -U compinit; compinit

# alias
alias ls='ls -G'
alias vi='nvim'
alias vim='nvim'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# sources
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${HOME}/.fzf.zsh

# exports
export EDITOR=nvim
export PATH="/usr/local/bin:$PATH"

# evals
eval "$(aactivator init)"

# fix ctrl-a and ctrl-e not working in tmux
# See https://superuser.com/a/523973
bindkey -e
