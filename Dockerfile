FROM ubuntu:latest
RUN apt-get update && \
    apt-get install zsh vim git ripgrep -y && \
    chsh -s /usr/bin/zsh && \
    git clone https://github.com/tomotargz/dotfiles.git && \
    cd dotfiles && \
    bash ./install.sh
CMD /bin/zsh
