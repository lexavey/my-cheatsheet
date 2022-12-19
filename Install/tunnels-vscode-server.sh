export PWD=$(pwd)
export INSTALL_DIR="$PWD/vscode-tunnels-server"
export SERVER_NAME=$(printf "%s_%s" "$(whoami)" "$(uname -n)"|head -c 20);
export VSCODE_CLI_DATA_DIR=$INSTALL_DIR
export TMPDIR=$INSTALL_DIR/temp
export TMP=$INSTALL_DIR/temp
export TEMP=$INSTALL_DIR/temp
export XDG_RUNTIME_DIR=$INSTALL_DIR/temp
export BINARY_FILE=$INSTALL_DIR/code

mkdir -p $INSTALL_DIR/temp
if [ ! -f $INSTALL_DIR/.bashrc ]; then
    if [ -f $HOME/.bashrc ]; then
        cp $HOME/.bashrc $INSTALL_DIR/.bashrc
    elif [ -f /etc/skel/.bashrc ]; then
        cp /etc/skel/.bashrc $INSTALL_DIR/.bashrc
    elif [ -f /etc/bashrc ]; then
        cp /etc/bashrc $INSTALL_DIR/.bashrc
    else
        echo "BASHRCERROR">>ERROR.txt
    fi
fi
export HOME=$INSTALL_DIR
LOGS(){
    dt=$(date '+%d/%m/%Y %H:%M:%S');
    echo "[ $dt ] $1">>$TMP/logs.txt
}
STATUS(){
    dt=$(date '+%d/%m/%Y %H:%M:%S');
    echo "[ $dt ] $1">$INSTALL_DIR/status.txt
}


has() {
  type "$1" > /dev/null 2>&1
}
if has "wget"; then
  DOWNLOAD() {
    wget --no-check-certificate -nc -O "$2" "$1"
  }
elif has "curl"; then
  DOWNLOAD() {
    curl -sSL -o "$2" "$1"
  }
else
  LOGS "Error: you need curl or wget to proceed"
  exit 1
fi

if PID_PROCESS=$(pgrep "$BINARY_FILE" -f) 2>&1; then
    STATUS "RUNNING PID $PID_PROCESS"
    exit;
fi
if ! has "$BINARY_FILE"; then
    LOGS "Download binary"
    DOWNLOAD https://github.com/lexavey/my-cheatsheet/raw/main/Files/vscode-tunnels/vscode_cli_alpine_x64_cli/code $BINARY_FILE
    chmod +x $BINARY_FILE
fi
if has "$BINARY_FILE"; then
    CHECK=$($BINARY_FILE tunnel user show 2>&1)
    LOGS "Check : $CHECK"
    if [ "$CHECK" = "not logged in" ]; then
        if [ $(timeout --kill-after=59 59 $BINARY_FILE tunnel user login >$TMP/login.txt) ];then
            LOGS "Login OK"
        else
            STATUS "LOGIN TIMEOUT"
            LOGS "Login timeout"
        fi
    elif [ "$CHECK" = "logged in" ]; then
        echo '{"consented":true}'>$INSTALL_DIR/license_consent.json
        LOGS "Tunnel start"
        STATUS "STARTED"
        $BINARY_FILE tunnel --accept-server-license-terms --name $SERVER_NAME 2>&1 >> $INSTALL_DIR/output.txt
        LOGS "Tunnel closed"
        STATUS "CLOSED"
    else
        LOGS "Unknown error"
        STATUS "ERROR"
    fi
else
    LOGS "Binary error/not found"
    STATUS "ERROR"
fi