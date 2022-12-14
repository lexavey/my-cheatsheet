## Install NVM & NodeJS
    export HOME=./ && wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash 2>&1
    export HOME=./ && export NVM_DIR="./.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 8.0.0 2>&1
##### Use node
    export HOME=./ && export NVM_DIR="./.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use 8.0.0 && node -v 2>&1
##### Use npm
    export HOME=./ && export NVM_DIR="./.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use 8.0.0 && npm -v 2>&1
## Install Cloud9IDE SDK
    export HOME="./" && curl -fsSL https://raw.githubusercontent.com/lexavey/c9install/master/install.sh | bash &>output.txt 2>&1
## Install git
    curl -fsSL https://raw.githubusercontent.com/lexavey/my-cheatsheet/main/Install/git.sh | bash &>output.txt 2>&1
## Install Open vscode server
    curl -fsSL https://raw.githubusercontent.com/lexavey/my-cheatsheet/main/Install/open-vscode-server.sh | bash &>output.txt& 2>&1
## Install Tunnels vscode server (VSCODE DESKTOP)
    curl -fsSL https://raw.githubusercontent.com/lexavey/my-cheatsheet/main/Install/tunnels-vscode-server.sh | bash &>output.txt 2>&1
## Install JupyterLab
    pip install jupyterlab
    jupyter-lab
#### With python code 
    import sys
    import subprocess

    # implement pip as a subprocess:
    subprocess.check_call([sys.executable, '-m', 'pip', 'install', 
    'jupyterlab'])

