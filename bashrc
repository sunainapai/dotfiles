tput_color()
{
    tput setaf "$1"
}

tput_reset()
{
    tput sgr0
}

active_prompt()
{
    # Git branch
    git_branch=$(git branch 2> /dev/null | sed -n 's/^\* *//p')
    if [ -n "$git_branch" ]
    then
        tput_color 148 # yellow
        printf '[%s] ' "$git_branch"
    fi
    unset git_branch

    # Current directory
    if [ "$PWD" != "$HOME" ]
    then
        if printf '%s' "$PWD" | grep -q "^$HOME"
        then
            neat_path="~${PWD#$HOME}"
        else
            neat_path=$PWD
        fi
        tput_color 2 # green
        printf '%s' "$neat_path"
        unset neat_path
    fi

    # Dollar sign
    tput_color 170 # pink
    printf '$ '
    tput_reset
}

PS1='$(active_prompt)'
