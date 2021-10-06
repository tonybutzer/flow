from python

run pip3 install pyflowchart && \
    apt-get update && apt-get -y install graphviz && \
    apt-get -y install build-essential libgtk-3-dev && \
    apt-get install -y libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev && \
    apt-get install -y libasound2

run curl -sL https://deb.nodesource.com/setup_12.x | bash - &&\
    apt-get -y install nodejs && node --version && \
    npm install -g electron --unsafe-perm=true --allow-root && \
    npm install -g diagrams --unsafe-perm=true --allow-root 


WORKDIR /home

run pwd
