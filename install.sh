if [[ $# -ne 3 ]]; then
    echo "Wrong number of arguments. Exiting."
    exit 1
fi

source check_if_installed.sh

if [[ -f "$RESULT_FILENAME" ]]; then
    rm -f "$RESULT_FILENAME"
fi

create_result_info_file

if [[ $1 -eq 1 ]]; then
    ./install_vim.sh
fi

if [[ $2 -eq 1 ]]; then
    ./install_ctags.sh
fi

if [[ $3 -eq 1 ]]; then
    ./install_dotnet.sh
fi
