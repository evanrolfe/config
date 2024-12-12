alias gst='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gpo='git push origin'
alias dockerstop='docker stop $(docker ps -q)'
alias dls='docker container ls'
dbash() {
    if [ -z "$1" ]; then
        echo "Usage: dbash <container_id_or_name>"
        return 1
    fi
    docker exec -it "$1" bash
}

# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Load the ssh identy
# eval $(ssh-agent)
# ssh-add ~/.ssh/id_rsa
