FROM gitpod/workspace-full

# Install Oxford Oberon-2
RUN sudo apt-get -q update && \
    sudo wget https://github.com/Spivoxity/obc-3/releases/download/rel-3.1.0/obc_3.1.0_amd64.deb && \
    sudo apt install -y ./obc_3.1.0_amd64.deb && \
    sudo rm -rf /var/lib/apt/lists/* 