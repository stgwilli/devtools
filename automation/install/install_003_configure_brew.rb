%w[git
coreutils
ctags
freetds
gdbm
growlnotify
ircii
libevent
macvim
neon
node
pkg-config
readline
reattach-to-user-namespace
sqlite
subversion
tmux
unixodbc
].each{|item| system("brew install #{item}")}


