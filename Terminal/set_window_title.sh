# That will update the title of your winsow terminal.
# Tested with iterm2 only so far.
function set-windows-title {
    # local mode=$1 ; shift
    # 0 : Both
    # 1 : tab
    # 2 : title

    local mode=0
    echo -ne "\033]$mode;$@\007"
}
