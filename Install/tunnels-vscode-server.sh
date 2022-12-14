export HOME=$(pwd)
export INSTALL_DIR=$(pwd)
export SERVER_NAME=$(printf %s_%s "$(whoami)" "$(uname -n)"
export VSCODE_CLI_DATA_DIR=$INSTALL_DIR
export TMPDIR=$INSTALL_DIR/temp
export TMP=$INSTALL_DIR/temp
export TEMP=$INSTALL_DIR/temp
export XDG_RUNTIME_DIR=$INSTALL_DIR/temp
mkdir -p $INSTALL_DIR/temp
wget -O $INSTALL_DIR/tunnels-vscode-server https://github.com/lexavey/my-cheatsheet/raw/main/Files/vscode-tunnels/vscode_cli_alpine_x64_cli/code
chmod +x tunnels-vscode-server
./tunnels-vscode-server tunnel --accept-server-license-terms --name $SERVER_NAME  # you can add arguments here, use --help to list all of the possible options
# ./code tunnel prune
# ./code tunnel rename

# ./code tunnel user show