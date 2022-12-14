INSTALL_DIR=$(pwd)
wget -O $INSTALL_DIR/vscode_cli_alpine_x64_cli.tar.gz https://az764295.vo.msecnd.net/stable/5235c6bb189b60b01b1f49062f4ffa42384f8c91/vscode_cli_alpine_x64_cli.tar.gz
tar zxf $INSTALL_DIR/vscode_cli_alpine_x64_cli.tar.gz

./code tunnel --accept-server-license-terms --name rootestest # you can add arguments here, use --help to list all of the possible options