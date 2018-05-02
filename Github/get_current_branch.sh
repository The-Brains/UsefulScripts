# Print current branch
function gitcurrentbranch {
    git branch | grep \* | cut -d ' ' -f2
}
# Copy current branch to clipboard
function gcb {
    gitcurrentbranch | tr -d '\n' | pbcopy
}
