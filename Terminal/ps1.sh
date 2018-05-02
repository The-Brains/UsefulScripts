# Get the name of the current branch
function branch {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Get the current path
function getpath {
    pwd
}

# Super PS! :)
export PS1="╭─ \u \[\033[34m\]\$(getpath)\[\033[00m\]\[\033[32m\]\$(branch)\[\033[00m\]\n╰─▶ "

# That will make sure that it always start on new line.
shopt -s promptvars
PS1='$(printf "%$((COLUMNS-1))s\r")'$PS1
