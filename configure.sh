if [[ $# -ne 3 ]]; then
    echo "Expected 2 arguments. Exiting."
    exit 1
fi

readonly VIMRC_LINES_FILEPATH="vimrc_lines.txt"
readonly BASHRC_LINES_FILEPATH="bashrc_lines.txt"

readonly VIMRC_FILEPATH="$HOME/.vimrc"
readonly BASHRC_FILEPATH="$HOME/.bashrc"

function paste_lines() {
    while read -r line; do
        echo "$line" >> "$2"
    done < "$1"
}

function rm_and_touch() {
    if [[ -e "$1" ]]; then
        rm -f "$1"
    fi

    touch "$1"
}

if [[ $1 -eq 1 ]]; then
    if [[ -f "$BASHRC_LINES_FILEPATH" ]]; then
        rm_and_touch "$BASHRC_FILEPATH"
    else
        touch "$BASHRC_FILEPATH"
    fi
    paste_lines "$BASHRC_LINES_FILEPATH" "$BASHRC_FILEPATH"
    source "$HOME/.bashrc"
fi

if [[ $2 -eq 1 ]]; then
    if [[ -f "$VIMRC_LINES_FILEPATH" ]]; then
        rm_and_touch "$VIMRC_FILEPATH"
    else
        touch "$VIMRC_FILEPATH"
    fi
    paste_lines "$VIMRC_LINES_FILEPATH" "$VIMRC_FILEPATH"
fi

if [[ $3 -eq 1 ]]; then
    if [[ ! -f "$HOME/bin/cpwd" ]]; then
        ln "$cpwd" "$HOME/bin/cpwd"
    fi
fi
