# bin
alias grunt="node_modules/grunt-cli/bin/grunt"
alias redis.server="redis-server /usr/local/etc/redis.conf --daemonize yes"
alias postgres.server="pg_ctl -D /usr/local/var/postgres"
alias rm="rm -iv $1"
alias ls-tree="ls -R | grep \":$\" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
# dev
alias be="bundle exec"

# utils
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
alias myip="curl ifconfig.me"

# stuff
alias router="ssh root@192.168.1.1"


#should not be here
export GPG_TTY=$(tty)

# iCloud folder

alias icloud="~/Library/Mobile\ Documents/com~apple~CloudDocs"
