 INSTALL_DIR=$(pwd)
 wget -O $INSTALL_DIR/openvscode-server.tar.gz https://github.com/gitpod-io/openvscode-server/releases/download/openvscode-server-v1.74.0/openvscode-server-v1.74.0-linux-arm64.tar.gz
 tar zxf $INSTALL_DIR/openvscode-server.tar.gz
 mv $INSTALL_DIR/openvscode-server-*/ $INSTALL_DIR/openvscode-server
 cd $INSTALL_DIR/openvscode-server
 ./bin/openvscode-server # you can add arguments here, use --help to list all of the possible options