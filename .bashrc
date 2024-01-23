alias gb='git branch'
alias gsu='git submodule update --init'
alias gs='git status'

alias gc='git commit'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'

alias ga='git add -A'
alias gd='git diff -C'
alias gl='git log --oneline'
alias gct='git checkout'
alias gplr='git pull --rebase'
alias gclr='git clone --recursive'

alias gps='git push'
alias gpu='ga && gca --no-edit && gpm'

function gp {
    if [[ $# -lt 1 ]]; then echo Need one parameter: the branch name; return; fi;

    branch=$1;

    ref=HEAD
    if [[ $# -eq 2 ]]; then ref=$2; fi;

    topic=
    if [[ $# -eq 3 ]]; then topic=/$3; fi;
    echo Pushing $ref to $branch with topic: $topic

    git push --progress -v origin "$ref:refs/for/$branch$topic"
}

function gpm {
    gp master $*
}

alias gpd='git push origin HEAD:refs/drafts/master'

alias grb='git rebase'
alias grbc='git rebase --continue'

alias grsh='git reset --hard'
alias grss='git reset --soft'
alias grs='git reset'

alias gst='git stash'
alias gstl='git stash list'

# gradlew aliases

alias gdwdeps='./gradlew --refresh-dependencies'
alias gdwpack='./gradlew assemble --rerun-tasks --parallel'
alias gdwdploy='./gradlew clean deploy'
