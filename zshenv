#   (`-')   (`-').-> (`-').-> (`-')  _<-. (`-')_      (`-')
#   ( OO).->( OO)_   (OO )__  ( OO).-/   \( OO) )    _(OO )
# ,(_/----.(_)--\_) ,--. ,'-'(,------.,--./ ,--/,--.(_/,-.\
# |__,    |/    _ / |  | |  | |  .---'|   \ |  |\   \ / (_/
#  (_/   / \_..`--. |  `-'  |(|  '--. |  . '|  |)\   /   / 
#  .'  .'_ .-._)   \|  .-.  | |  .--' |  |\    |_ \     /_)
# |       |\       /|  | |  | |  `---.|  | \   |\-'\   /   
# `-------' `-----' `--' `--' `------'`--'  `--'    `-'    

# typeset -U path
## (N-/): 存在しないディレクトリは登録しない。
##    パス(...): ...という条件にマッチするパスのみ残す。
##            N: NULL_GLOBオプションを設定。
##               globがマッチしなかったり存在しないパスを無視する。
##            -: シンボリックリンク先のパスを評価。
##            /: ディレクトリのみ残す。
## thanks for http://www.clear-code.com/blog/2011/9/5.html
# path=(# システム用
#       /bin(N-/)
#       )

# general
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export SHELL=/usr/local/bin/zsh
export EDITOR=vim
export TERM=xterm-256color
export PATH=$HOME/bin:$PATH

# color
export CLICOLOR=1
export LSCOLORS=cxfxdxdxbxegedabagacad
export LS_COLORS='di=32:ln=35:so=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export ZLS_COLORS=$LS_COLORS

# gnuplot
export GNUTERM=x11

# Homebrew
[ -f /usr/local/bin/brew ] && export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share:$PATH

# anyenv
[ -f ~/.anyenv/bin/anyenv ] && export PATH=$HOME/.anyenv/bin:$PATH

# bundler
export BUNDLER_EDITOR="vim +CtrlP"

# golang
#   https://gist.github.com/ivanzoid/3477252
#   http://python.matrix.jp/2013/05/09/go_start1.html
type go &>/dev/null
if [ $? -eq 0 ]; then
    function setupGO() {
        local GOPATH=`which go`
        local GODIR=`dirname $GOPATH`
        local GOPATH_BREW_RELATIVE=`readlink $GOPATH`
        local GOPATH_BREW=`dirname $GOPATH_BREW_RELATIVE`
        export GOROOT=/usr/local/opt/go/libexec
    }
    setupGO

    export GOBIN=
    export CGO_ENABLED=1
    export GOPATH=$HOME
    export PATH=$PATH:$GOPATH/bin
fi
