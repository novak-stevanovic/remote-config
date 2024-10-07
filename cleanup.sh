VIMRC_FILEPATH="$HOME/.vimrc"
BASHRC_FILEPATH="$HOME/.bashrc"

VIM_PATH="$HOME/.install/vim"
VIM_BIN_PATH="$HOME/bin/vim"

CTAGS_BIN_PATH1="$HOME/bin/ctags"
CTAGS_BIN_PATH2="$HOME/bin/optscript"
CTAGS_BIN_PATH3="$HOME/bin/readtags"

#readonly VIMRC_FILEPATH="$HOME/.vimrc"
#readonly BASHRC_FILEPATH="$HOME/.bashrc"
#
#readonly VIM_PATH="$HOME/.install/vim"
#readonly VIM_BIN_PATH="$HOME/bin/vim"
#
#readonly CTAGS_BIN_PATH1="$HOME/bin/ctags"
#readonly CTAGS_BIN_PATH2="$HOME/bin/optscript"
#readonly CTAGS_BIN_PATH3="$HOME/bin/readtags"
#
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

