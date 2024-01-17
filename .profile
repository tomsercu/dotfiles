# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# Tom 2020-04-30 Setting up aliases; cf .bashrc and .zshrc.pre-oh-my-zsh
set -o vi
export VISUAL=vim
export EDITOR="$VISUAL"
export TZ=/usr/share/zoneinfo/US/Eastern

alias ll='ls -lahF' ## Show hidden files ##
alias l.='ls -d .* --color=auto'
alias l='ls -CF'
alias vi=vim
alias grep='grep --color=auto'
alias grip='grep -i'
alias mysqueue='squeue -u tsercu -o "%.9i %.9P %.28j %.8u %.2t %.10M %.6D %R"'
alias mysku=mysqueue
alias gd="git diff --submodule=diff"
greptails() { pat=$1; shift; for fn in $(ls "$@"); do echo "==> $fn <=="; grep -a $pat $fn | tail -1 | grep -E --color $pat; done }
bless() { pat=$1; shift; for fn in $(ls "$@"); do echo "==> $fn <=="; grep $pat $fn | tail -1; done }
function f { grep -rnIi "$1" . --color; }
function wff { while [ ! -f "$1" ]; do sleep 2; done; sleep 1; }

function offshore () {
    arr=("$@")
    from="\\/private\\/home\\/tsercu\\/work"
    to="\\/checkpoint\\/tsercu"
    for arg in "${arr[@]}"; do
        p=$(realpath $arg)
        # new path
        np=$(echo $p | sed "s/${from}/${to}/")
        if [[ $p == $np ]]; then
            echo "destination path $np == $p so I have nothing to do bye"
        elif [[ -L "$p" ]]; then
            echo "ewww $p is a a symlink i wont touch that"
        else # may or may not exist
            if [[ -e $p ]]; then
                echo "Move file or dir: $p to $np"
                mkdir -p $(dirname $np) #but first need to create basedir if it doesnt exist yet
                mv $p $np
            else
                echo "Make new directory $np"
                mkdir -p $np
            fi
            echo "Link $np to $p"
            ln -s $np $p
        fi
    done
}

grepcancel() {
    mysku | grep $1 | awk '{print "scancel " $1}'
}
