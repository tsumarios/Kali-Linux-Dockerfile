# Kali Linux latest with useful tools by tsumarios
FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive
# Update
RUN apt -y update && apt -y dist-upgrade && apt -y autoremove && apt clean

# Install ZSH shell with custom settings and set it as default shell
RUN apt -y install git zsh && wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
COPY config/.zshrc /root/.zshrc

# Install Kali Linux "Top 10" metapackage and a few useful tools
RUN apt -y install vim kali-linux-top10 net-tools whois netcat exploitdb man-db dirb nikto wpscan uniscan nodejs npm python3-pip tor proxychains

# Install some useful hardware packages
RUN apt -y install pciutils usbutils 

# Configure proxychains with Tor
COPY config/proxychains.conf /etc/proxychains.conf

ENTRYPOINT ["/bin/zsh"]
