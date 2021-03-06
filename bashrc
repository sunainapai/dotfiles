tput_color()
{
    printf '\x01'
    tput setaf "$1"
    printf '\x02'
}

tput_reset()
{
    printf '\x01'
    tput sgr0
    printf '\x02'
}

color_palette()
{
    if uname | grep -q Darwin
    then
        YELLOW=148
        GREEN=2
        PINK=170
    else
        YELLOW=226
        GREEN=46
        PINK=199
    fi
}

active_prompt()
{
    color_palette

    # Git branch
    git_branch=$(git branch 2> /dev/null | sed -n 's/^\* *//p')
    if [ -n "$git_branch" ]
    then
        tput_color "$YELLOW"
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
        tput_color "$GREEN"
        printf '%s' "$neat_path"
        unset neat_path
    fi

    # Dollar sign
    tput_color "$PINK"
    printf '$ '
    tput_reset
}

PS1='$(active_prompt)'

gitme()
{
    git config user.name "Sunaina Pai"
    git config user.email "sunainapai.in@gmail.com"
    git config user.name
    git config user.email
}

uncap()
{
    setxkbmap -option caps:escape
}

red()
{
    case $1 in
        off)
            pkill redshift
            ;;
        [0-9]*)
            pkill redshift
            pkill redshift
            redshift -v -l 0:0 -t $1:$1 > ~/redshift.log 2>&1 &
            ;;
        "")
            pkill redshift
            pkill redshift
            redshift -v -l 13:77 -t 5000:3700 > ~/redshift.log 2>&1 &
            ;;
        *)
            echo 'Usage: red [off | <temperature>]' >&2
            ;;
    esac
}

makemp3()
{
    time for f in "$@"
    do
        ffmpeg -y -i "$f" -q:a 0 "${f%.*}.mp3"
    done
}

alias vi='gvim'

[ -f ~/git/dotfiles/w.bashrc ] && . ~/git/dotfiles/w.bashrc
[ -r "/usr/local/etc/profile.d/bash_completion.sh" ] && . "/usr/local/etc/profile.d/bash_completion.sh"
