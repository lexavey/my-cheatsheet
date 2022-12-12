## Install NVM & NodeJS
    export HOME=./ && wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash 2>&1
    export HOME=./ && export NVM_DIR="./.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 8.0.0 2>&1
##### Use node
    export HOME=./ && export NVM_DIR="./.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use 8.0.0 && node -v 2>&1
##### Use npm
    export HOME=./ && export NVM_DIR="./.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use 8.0.0 && npm -v 2>&1

## Install Cloud9IDE
    export HOME="./" && curl -fsSL https://raw.githubusercontent.com/lexavey/c9install/master/install.sh | bash &>output.txt 2>&1
    
## Install git
    
