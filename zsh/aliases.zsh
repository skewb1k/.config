alias python="python3"
alias py="python3"
alias ls="ls --color=auto"

alias task="go-task"

alias nv="nvim ."

# yazi helper https://yazi-rs.github.io/docs/quick-start#shell-wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

function gdnolock() {
	if [[ "$#" -eq 0 ]]; then
		command git diff ':(exclude)package-lock.json' ':(exclude)pnpm-lock.yaml' ':(exclude)*.lock' ':(exclude)go.sum'
	else
		command git diff "$@"
	fi
}

alias gp='git push'
alias gpf='git push --force-with-lease'
alias gb="git branch"
alias gd="gdnolock"
alias gc="git add -A && git commit -v"
alias gl="git log --oneline --graph --decorate --all"
alias gll="git --no-pager log --oneline --graph --decorate --all -n 20"
alias gs="git status"
alias gcne="git commit --amend --no-edit"
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -m "[WIP]: $(date -u)"'
alias gdate='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -m "$(date -u)"'

alias cdr='cd $(git rev-parse --show-toplevel)'

alias fo='fzf --print0 | xargs -0 -o nvim'

alias d="docker"
alias dsp="docker system prune -af && docker volume prune -af"

alias g='gtrash'
alias gm='g put'

alias yay='yay --noconfirm'
