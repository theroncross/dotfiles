# Aliases
alias ls='exa -la'
alias cat='batcat --theme=TwoDark'

alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && flatpak update -y'

alias g='git'
#compdef g=git
alias ga='git add'
#compdef _git ga=git-add
alias gap='git add -p'
#compdef _git ga=git-add
alias gb='git branch'
#compdef _git gb=git-branch
alias gba='git branch -a'
#compdef _git gba=git-branch
alias gc='git commit'
#compdef _git gc=git-commit
alias gclean='git reset --hard; and git clean -dfx'
#compdef _git ga=git-reset
alias gcm='git commit -m'
#compdef _git gcmsg=git-commit
alias gco='git checkout'
#compdef _git gco=git-checkout
alias gcob='git checkout -b'
#compdef _git gco=git-checkout
alias gcount='git shortlog -sn'
#compdef gcount=git
alias gcp='git cherry-pick'
#compdef _git gcp=git-cherry-pick
alias gd='git diff'
#compdef _git gdv=git-diff
alias gdc='git diff --cached'
#compdef _git gdc=git-diff
alias gf='git fetch --all --prune'
#compdef _git ga=git-fetch
alias gl='git pull'
#compdef _git gl=git-pull
alias glo='git log --oneline'
#compdef _git glo=git-log
alias gmt='git mergetool'
#compdef _git gst=git-mergetool
alias gp='git push'
#compdef _git gp=git-push
alias grbi='git rebase -i'
#compdef _git grbi=git-rebase
alias grbc='git rebase --continue'
#compdef _git grbc=git-rebase
alias grba='git rebase --abort'
#compdef _git grba=git-rebase
alias gst='git status'
#compdef _git gst=git-status
alias gup='git pull --rebase'
#compdef _git gup=git-fetch
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
#compdef _git gwc=git-whatchanged
alias ghco='gh pr checkout'
#compdef ghco=gh


#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch
  set ref (git symbolic-ref HEAD 2> /dev/null); or \
  set ref (git rev-parse --short HEAD 2> /dev/null); or return
  echo ref | sed s-refs/heads--
end

function current_repository
  set ref (git symbolic-ref HEAD 2> /dev/null); or \
  set ref (git rev-parse --short HEAD 2> /dev/null); or return
  echo (git remote -v | cut -d':' -f 2)
end

# these aliases take advantage of the previous function
alias ggpull='git pull origin (current_branch)'
#compdef ggpull=git
alias ggpur='git pull --rebase origin (current_branch)'
#compdef ggpur=git
alias ggpush='git push origin (current_branch)'
#compdef ggpush=git
alias ggpnp='git pull origin (current_branch); and git push origin (current_branch)'
#compdef ggpnp=git

# Pretty log messages
function _git_log_prettily
  if ! [ -z $1 ]; then
    git log --pretty=$1
  end
end

alias glp="_git_log_prettily"
#compdef _git glp=git-log

# Work In Progress (wip)
# These features allow to pause a branch development and switch to another one (wip)
# When you want to go back to work, just unwip it
#
# This function return a warning if the current branch is a wip
function work_in_progress
  if git log -n 1 | grep -q -c wip; then
    echo "WIP!!"
  end
end

# these alias commit and uncomit wip branches
alias gwip='git add -A; git ls-files --deleted -z | xargs -0 git rm; git commit -m "wip"'
alias gunwip='git log -n 1 | grep -q -c wip; and git reset HEAD~1'
