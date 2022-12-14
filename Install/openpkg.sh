# optionally direct /openpkg to at least 150MB free disk space:

# optionally direct temporary directory to at least 250MB free disk space:

export HOME=$(pwd)
export INSTALL_DIR=$(pwd)
export TMPDIR=$INSTALL_DIR/temp
export TMP=$INSTALL_DIR/temp
export TEMP=$INSTALL_DIR/temp
export XDG_RUNTIME_DIR=$INSTALL_DIR/temp

mkdir -p $INSTALL_DIR/openpkg
mkdir -p $TMPDIR
# switch to temporary directory:
cd $TMPDIR
wget http://openpkg.org/go/download/openpkg.src.sh
sh openpkg.src.sh --prefix=$INSTALL_DIR/openpkg --tag=openpkg --user=$(id -un) --group=$(id -Gn) 
# sh openpkg.src.sh --prefix=/home/limited/x/openpkg --tag=openpkg --user=$(id -un) --group=$(id -Gn) 

