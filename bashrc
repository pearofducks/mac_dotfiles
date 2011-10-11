export PS1="\n[\[\033[38;05;240m\]\[\033[38;05;02m\]v \[\033[0m\]\W\[\033[38;05;240m\]]$\[\033[0m\] "

shopt -s nocaseglob

export EDITOR="vim"
export MANPAGER="less -X"
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:ls *:la"

alias uiosync='rsync -avz -e ssh UIO/ pear:./storage/uio/'
# command changes
alias b='bundle exec'
alias v='vim'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias ..='cd ..'
alias irb='irb -r irb/completion'

# new commands
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep $1'      # requires an argument
alias openports='netstat --all --numeric --programs --inet --inet6'
alias pg='ps -Af | grep $1'         # requires an argument (note: /usr/bin/pg is installed by the util-linux package; maybe a different alias name should be used)
alias b='bundle exec'

# ls
alias ls='ls -hFG'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

cd() {
  builtin cd "${@:-$HOME}" && ls
}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
