source check_if_installed.sh

if [[ -e "$HOME/.dotnet" ]] || [[ $(is_installed "dotnet") -eq 1 ]]; then
    echo "Dotnet is already installed. Exiting." >> "$RESULT_FILENAME"
    exit 1
fi

create_result_info_file

readonly TEMP_DIR="$HOME/.temp_dotnet"

if [[ -d "$TEMP_DIR" ]]; then
    rm -rf "$TEMP_DIR"
fi

mkdir "$TEMP_DIR"

cd "$TEMP_DIR"

wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest

if [[ -d "$TEMP_DIR" ]]; then
    rm -rf "$TEMP_DIR"
fi

