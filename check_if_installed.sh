readonly RESULT_FILENAME="result.txt"

function create_result_info_file {
    if [[ ! -f "$RESULT_FILENAME" ]]; then
        touch "$RESULT_FILENAME"
    fi
}

function is_installed() {
    if command -v "$1" &> /dev/null
    then
        echo 1
    else
        echo 0
    fi
}
