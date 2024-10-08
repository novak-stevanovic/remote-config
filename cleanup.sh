VIMRC_FILEPATH="$HOME/.vimrc"
BASHRC_FILEPATH="$HOME/.bashrc"

VIM_PATH="$HOME/.install/vim"
VIM_BIN_PATH="$HOME/bin/vim"

CTAGS_BIN_PATH1="$HOME/bin/ctags"
CTAGS_BIN_PATH2="$HOME/bin/optscript"
CTAGS_BIN_PATH3="$HOME/bin/readtags"

CPWD_BIN_PATH="$HOME/bin/cpwd"

TEMP_VIM_PATH="$HOME/.temp_vim"
TEMP_CTAGS_PATH="$HOME/.temp_ctags"

function rm_if_exists() {
    if [[ -e "$1" ]] || [[ -L "$1" ]]; then
        rm -rf "$1"
    fi
}

rm_if_exists "$VIMRC_FILEPATH"
rm_if_exists "$BASHRC_FILEPATH"

rm_if_exists "$VIM_PATH"
rm_if_exists "$VIM_BIN_PATH"

rm_if_exists "$CTAGS_BIN_PATH1"
rm_if_exists "$CTAGS_BIN_PATH2"
rm_if_exists "$CTAGS_BIN_PATH3"

rm_if_exists "$CPWD_BIN_PATH"

rm_if_exists "$TEMP_VIM_PATH"
rm_if_exists "$TEMP_CTAGS_PATH"

echo "Remember to delete .dotnet if needed"

