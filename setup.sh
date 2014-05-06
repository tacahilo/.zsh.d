#!/bin/bash
set -e

[ ! -n "$HOME" ] && exit 1;

if [ ! -e $HOME/.zlogin ]; then
cat <<'EOF' > $HOME/.zlogin
echo "Hello, Z World !"

EOF
fi

cat <<'EOF' > $HOME/.zshenv
source ~/.zsh.d/zshenv
EOF

cat <<'EOF' > $HOME/.zshrc
source ~/.zsh.d/zshrc
source ~/.zsh.d/function.zsh
if exists percol; then
    source ~/.zsh.d/percol.zsh
fi
source ~/.zsh.d/aliases.zsh
source ~/.zsh.d/theme.zsh
source ~/.zsh.d/config/packages.zsh
if exists direnv; then
    eval "$(direnv hook zsh)"
fi
EOF

ls -hal ~/.zsh{.d,env,rc} ~/.zlogin

cat <<'EOF'

,--.                       
,-|  | ,---. ,--,--,  ,---.  
' .-. || .-. ||      \| .-. : 
\ `-' |' '-' '|  ||  |\   --. 
`---'  `---' `--''--' `----' 

EOF
