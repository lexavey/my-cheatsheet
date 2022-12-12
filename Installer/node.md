    wget -O git.tar.gz https://github.com/git/git/archive/refs/tags/v2.39.0.tar.gz # https://github.com/git/git/tags
    tar zxf git.tar.gz
    mv git-*/ git
    cd git
    make configure
    ./configure --prefix=`pwd` --with-curl --with-expat
    # ./configure --prefix=`pwd`
    # Make flags from https://public-inbox.org/git/CAP8UFD2gKTourXUdB_9_FZ3AEECTDc1Fx1NFKzeaTZDWHC3jxA@mail.gmail.com/
    make NO_GETTEXT=Nope NO_TCLTK=Nope
    make install NO_GETTEXT=Nope NO_TCLTK=Nope
