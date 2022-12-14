export HOME=$(pwd)
INSTALL_DIR=$(pwd)
wget -O $INSTALL_DIR/code https://github.com/lexavey/my-cheatsheet/raw/main/Files/vscode-tunnels/vscode_cli_alpine_x64_cli/code
chmod +x code
./code tunnel --accept-server-license-terms --name servertest # you can add arguments here, use --help to list all of the possible options

# ./code tunnel rename

# ./code tunnel user show