# Can copy that to .bash_profile


# Allow to switch from one brain to another and automatically
# updating it to latest.
function gitswitch {
	git checkout $1 && git fetch && git rebase origin/master
}

# Will restore the file pass to state they are in origin/master
function gitrevert {
	if [ $# -eq 0 ]; then
		echo "Need files"
		return 1
	fi
	git reset origin/master $@
	git checkout -- $@
}

# Will create a new branch
function gitcreatebranch {
	git fetch && git rebase origin/master && git checkout -b $1
}

# Will return who wrote what
# gitfindwho "ThisMethod"
function gitfindwho {
	git log -u -S "$1"
}

# Will rebase all pass branches to origin/master
# getAllrefresh branch1 branch2 branch3
function gitAllrefresh {
    gitswitch master

    for var in "$@"
    do
        gitswitch $var
    done

    gitswitch master
}

# Will display the branch list
alias "gitbranch_long"="git branch -v"
# Will display just the name of the branches
alias "gitbranch"="git branch"
# Will rebase the current branch
alias "gitrefresh"="git fetch && git rebase origin/master"
# Will commit and continue the rebase
alias "gitcontinue"="git add . && git rebase --continue"
# Diff with origin
alias "gitdiff"="git diff origin/master"
# Show the list of modified file
alias "giteditshow"="git show --pretty="format:" --name-only"
# Add all the pending changes to the latest commit
alias "gitsaveontop"="git add . && git commit --amend --no-edit"
# Add all the pending changes to a new commit
alias "gitsaveas"="git add . && git commit"
# Open up the rebase interaction
alias "gitinteractive"="git rebase -i origin/master"
# Undo the latest commit
alias "gitundocommit"="git reset HEAD^"
