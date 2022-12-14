export HOME=$(pwd)
export INSTALL_DIR=$(pwd)
export SERVER_NAME=printf %s_%s "$(whoami)" "$(uname -n)"
wget -O $INSTALL_DIR/tunnels-vscode-server https://github.com/lexavey/my-cheatsheet/raw/main/Files/vscode-tunnels/vscode_cli_alpine_x64_cli/code
chmod +x tunnels-vscode-server
./tunnels-vscode-server tunnel --accept-server-license-terms --name $SERVER_NAME  # you can add arguments here, use --help to list all of the possible options

# ./code tunnel rename

# ./code tunnel user show