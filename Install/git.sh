INSTALL_DIR=$(pwd)
wget -O git.tar.gz https://github.com/git/git/archive/refs/tags/v2.39.0.tar.gz # https://github.com/git/git/tags
tar zxf git.tar.gz
mv git-*/ git
cd git

make configure NO_EXPAT=Yes NO_OPENSSL=Yes NO_CURL=Yes 
# https://gitlab.com/gitlab-org/omnibus-gitlab/-/merge_requests/5948
# https://chromium.googlesource.com/external/github.com/git/git/+/HEAD/INSTALL
# https://gist.github.com/taicki/323800/71b227197e6a94f87ff450bfd6c7fb3ced6b2e49
#./configure --prefix="$INSTALL_DIR/local" --with-curl --with-expat
./configure --prefix="$INSTALL_DIR/local"
# Make flags from https://public-inbox.org/git/CAP8UFD2gKTourXUdB_9_FZ3AEECTDc1Fx1NFKzeaTZDWHC3jxA@mail.gmail.com/
make NO_GETTEXT=YES NO_TCLTK=YES NO_EXPAT=Yes NO_OPENSSL=Yes NO_CURL=Yes 
make NO_GETTEXT=YES NO_TCLTK=YES NO_EXPAT=Yes NO_OPENSSL=Yes NO_CURL=Yes 
$INSTALL_DIR/local/bin/git -v


