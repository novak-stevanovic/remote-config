# script to install ctags without root
cd

mkdir "$HOME/tmp_ctags"
cd "$HOME/tmp_ctags"

git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure --prefix=$HOME/
make
make install

rm -rf "$HOME/tmp_ctags"

