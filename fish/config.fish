#if status is-interactive
#    # Commands to run in interactive sessions can go here
#    test $TERM != "screen"; and exec tmux
#end

if status is-interactive
    and not set -q TMUX
    exec tmux
end

function fish_user_key_bindings
    #bind \cc 'echo; commandline | cat; commandline ""; commandline -f repaint'
    #bind ll 'ls -al'
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

#lg()
#{
#    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir
#
#    lazygit "$@"
#
#    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
#            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
#            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
#    fi
#}

alias vi=nvim
alias v=nvim
#alias ll="ls -al"
alias ec="vi .config/fish/config.fish"
alias sc="source ~/.config/fish/config.fish"
alias sd="shutdown now"
alias re="reboot"
alias lg=lazygit
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# linux key press rate
# setxkbmap -option "ctrl:swapcaps"
# xset r rate 150 60

# macos key press rate
#defaults write -g InitialKeyRepeat -int 10
#defaults write -g KeyRepeat -int 1

set -gx EDITOR nvim

set -U fish_mouse_autosequence 0
