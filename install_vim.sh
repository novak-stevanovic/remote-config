source check_if_installed.sh

if [[ -e "$HOME/.install/vim" ]] || [[ -e "$HOME/bin/vim" ]] || [[ $(is_installed "vim") -eq 1 ]]; then
    echo "Vim is already installed." >> "$RESULT_FILENAME"
    exit 1
fi

cd

function create_result_info_file

mkdir -p "$HOME/.install/vim"

readonly TEMP_DIR="$HOME/.temp_vim"

if [[ ! -d "$HOME/bin" ]]; then
    mkdir "$HOME/bin"
fi

if [[ -d "$TEMP_DIR" ]]; then
    rm -rf "$TEMP_DIR"
fi

mkdir "$TEMP_DIR"

cd "$TEMP_DIR"
git clone https://github.com/vim/vim.git
cd vim/src

make install DESTDIR=$HOME/.install/vim

if [[ -d "$TEMP_DIR" ]]; then
    rm -rf "$TEMP_DIR"
fi

ln -s $HOME/.install/vim/usr/local/bin/vim $HOME/bin
