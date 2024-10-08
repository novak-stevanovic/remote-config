# script to install ctags without root
source check_if_installed.sh

if [[ -e "$HOME/bin/ctags" ]] || [[ $(is_installed "ctags") -eq 1 ]]; then
    echo "Ctags is already installed." >> "$RESULT_FILENAME"
    exit 1
fi

cd

create_result_info_file

readonly TEMP_DIR="$HOME/.temp_ctags" 

if [[ -e $TEMP_DIR ]]; then
    rm -rf $TEMP_DIR
fi

mkdir $TEMP_DIR
cd $TEMP_DIR

git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure --prefix=$HOME/
make
make install

rm -rf $TEMP_DIR

