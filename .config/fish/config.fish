set fish_greeting

set -g theme_short_path yes

# Web drivers for selenium
set -x PATH $HOME/WebDrivers $PATH

# Python
alias python "python3"
alias pip "pip3"
alias newenv "python3 -m venv"
set -x PATH $HOME/Library/Python/3.7/bin $PATH

# Flutter
set -x PATH $HOME/tools/flutter/bin $PATH

# Android
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $ANDROID_HOME/tools $PATH
set -x PATH $ANDROID_HOME/tools/bin $PATH
set -x PATH $ANDROID_HOME/platform-tools $PATH
set -x PATH $ANDROID_HOME/emulator $PATH

# Rust
set -x PATH $HOME/.cargo/bin $PATH

# VIM
set -x EDITOR nvim
set -x LC_ALL en_US.UTF-8

# Golang
set -x GOPATH $HOME/projects/golang
set -x PATH $GOPATH/bin $PATH

# N
set -x N_PREFIX $HOME/.n
set -x PATH $N_PREFIX/bin $PATH

# Composer
set -x PATH $HOME/.composer/vendor/bin $PATH

# VSCode & Sublime Text
set -x PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
set -x PATH "/Applications/Sublime Text.app/Contents/SharedSupport/bin" $PATH

# FZF
set -x FZF_DEFAULT_COMMAND "rg --files"
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

# Ruby (rbnenv)
status --is-interactive; and source (rbenv init -|psub)

# LaTex
set -x PATH "/usr/local/texlive/2019basic/bin/x86_64-darwin" $PATH
