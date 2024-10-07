cd

if [[ ! -d "$HOME/.install/vim" ]]; then
    mkdir -p "$HOME/.install/vim"
else
    exit 0
fi

if [[ ! -d "$HOME/bin" ]]; then
    mkdir "$HOME/bin"
fi

if [[ -d "temp_vim" ]]; then
    rm -rf "temp_vim"
fi

mkdir "temp_vim"

cd "temp_vim"
git clone https://github.com/vim/vim.git
cd vim/src

make install DESTDIR=$HOME/.install/vim

if [[ -d "$HOME/temp_vim" ]]; then
    rm -rf "$HOME/temp_vim"
fi

ln -s $HOME/.install/vim/usr/local/bin/vim $HOME/bin
