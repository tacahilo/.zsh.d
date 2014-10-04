# ========================================================
#  ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ 
# ||a |||u |||t |||o |||- |||f |||u |||. |||z |||s |||h ||
# ||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||
# |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|
#                                                         
# ========================================================
source $HOME/.zsh.d/packages/auto-fu.zsh/auto-fu.zsh
zle-line-init () {auto-fu-init;}; zle -N zle-line-init
zstyle ':completion:*' completer _oldlist _complete
zle -N zle-keymap-select auto-fu-zle-keymap-select

# ========================================================
#  ____ ____ ____ ____ ____ ____                          
# ||z |||s |||h |||- |||b |||d ||                         
# ||__|||__|||__|||__|||__|||__||                         
# |/__\|/__\|/__\|/__\|/__\|/__\|                         
#                                                         
# ========================================================
source $HOME/.zsh.d/packages/zsh-bd/bd.zsh

# ========================================================
#  ____ ____ ____ ____ ____ ____                          
# ||g |||o |||l |||a |||n |||g ||                         
# ||__|||__|||__|||__|||__|||__||                         
# |/__\|/__\|/__\|/__\|/__\|/__\|                         
#                                                         
# ========================================================
source $GOROOT/../share/zsh/site-functions/_go
