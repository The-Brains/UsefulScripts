function gitcreatebranch {
    git fetch && git rebase origin/master && git checkout -b $1 && git branch --set-upstream-to origin/$1
}
