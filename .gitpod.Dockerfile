FROM gitpod/workspace-full

# Install Oxford Oberon-2 as per https://spivey.oriel.ox.ac.uk/corner/Installing_OBC_release_3.1#Debian.2C_Ubuntu_and_similar_x86_or_amd64_Linux_systems
RUN sudo apt-get -q update && \
    sudo wget https://github.com/Spivoxity/obc-3/releases/download/rel-3.1.0/obc_3.1.0_amd64.deb && \
    sudo rm -rf /var/lib/apt/lists/* 

RUN sudo dpkg -i obc_3.1.0_amd64.deb
RUN sudo apt-get -f install 
