# Shortcut for deleting pyc files recursively in the current directory
alias rmpyc='find . -name "*.pyc" -delete'

# Always disregard binary files and show line numbers.
alias bgrep='grep -n --binary-files without-match'

# Set df/du to human readable sizes.
alias df='df -h'
alias du='du -h'

alias ls='ls -lsah -G'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

capture_stdout() {
    sudo dtrace -p "$1" -n '
        syscall::write*:entry
        /pid == $target && arg0 == 1/ {
            printf("%s", copyinstr(arg1, arg2));
        }
    '
}

capture() {
    sudo dtrace -p "$1" -n '
        syscall::write*:entry
        /pid == $target && (arg0 == 1 || arg0 == 2)/ {
            printf("%s", copyinstr(arg1, arg2));
        }
    '
}
