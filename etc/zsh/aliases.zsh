if [[ -v ZSH_DEBUG ]]; then
    echo "Sourcing aliases.zsh"
fi

# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

# Moving around
alias ..='cd ..'
alias cdb='cd -'

# Show human friendly numbers and colors
alias df='df -h'
alias ls='ls --color'
alias ll='ls -alGh'
alias l='ls -lh'

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
alias ae='vi $location/etc/zsh/aliases.zsh' #alias edit
alias ar='source $location/etc/zsh/aliases.zsh'  #alias reload

# vimrc editing
alias ve='vi ~/.vimrc'

# zsh profile editing
alias ze='vi ~/.zshrc'
alias zr='source ~/.zshrc'

# shell var editing
alias se='vi $location/etc/zsh/shellvars.zsh'
alias sr='source $location/etc/zsh/shellvars.zsh'

# functions editing
alias fe='vi $location/etc/zsh/functions.zsh'
alias fr='source $location/etc/zsh/functions.zsh'

# ssh config edit
alias sshe='vi ~/.ssh/config'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vi .gitignore'
alias gcm='git commit -m'
alias gco='git checkout'
alias ga='git add -A'
alias gai='git add -i'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D'
alias gdc='git diff --cached'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push'
alias gpu='git upstream'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'

# Common shell functions
alias less='less -r'
#alias tf='tail -f'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Vim/ctags "mctags = make ctags", using the ruby specific version
# to save some time
alias mctags=~/.bin/run_tags.rb #'/opt/local/bin/ctags -Rf ./tags *'
alias maketags='/usr/local/bin/ctags -Rf ./tags *'

alias ka9='killall -9'
alias k9='kill -9'
alias pk='pkill'
alias pk9='pkill -9'


# Forward port 80 to 3000
# alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

#alias cal='`cal`; today=`date "+%e"`; echo -en "${cal/${today}/\033[1;32m${today}\033[0m}"'

# alias hdm='hdiutil mount'
# alias hdu='hdiutil unmount'

alias pathcommands="IFS=':' i=($PATH); printf '%s\n' ${i[*]/%//*}"
alias showpath="echo $PATH | tr ':' '\n'"

# Rsync stuff
alias rscp='rsync -aP --stats --no-whole-file --inplace'
alias rsmv='rscp --remove-source-files'

alias rebin='chmod -R u+x ~/bin'
alias gsc='screencapture -ic'
alias qsl='qs *(.om[1])'

alias extip='curl -s checkip.dyndns.org PGIP'
alias quickconns="netstat -ant|awk '{print $NF}'|grep -v '[a-z]'|sort|uniq -c "

alias pxmlp='pbpaste | xmllint --format - | pbcopy'


alias vinew='vi *(.om[1])'
alias vissh='vi ~/.ssh/config'

# alias fd='fdfind'

alias vagrant='/mnt/c/HashiCorp/Vagrant/bin/vagrant.exe'
alias cmd='/mnt/c/Windows/system32/cmd.exe'
alias powershell='/mnt/c/Windows/system32/WindowsPowerShell/v1.0/powershell.exe'
alias explorer='/mnt/c/Windows/explorer.exe'
alias notify-send='/mnt/c/Users/peter/bin/notify-send.exe'
alias subl='/mnt/c/Program\ Files/Sublime\ Text/sublime_text.exe'
alias code='/mnt/c/Users/peter/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code'
alias open='wsl-open'

alias cdtmp='cd `mktemp -d /tmp/play-XXXX`'

alias ph='phylum'
alias ws='wormhole-william send'
alias op='/mnt/c/Program\ Files/1Password\ CLI/op.exe'

alias fdfind='fd'
