set fish_greeting

set -g theme_short_path yes

# N
set -x N_PREFIX $HOME/.n
set -x PATH $N_PREFIX/bin $PATH

# VSCode & Sublime Text
set -x PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
set -x PATH "/Applications/Sublime Text.app/Contents/SharedSupport/bin" $PATH

# FZF
set -x FZF_DEFAULT_COMMAND "fd -t f -H -E .git"
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND