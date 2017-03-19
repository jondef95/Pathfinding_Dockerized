#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

sudo apt-get update \
    && sudo apt-get -y install apt-transport-https ca-certificates \
    && sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D \
    && echo "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release --codename --short) main" \
        | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
    && sudo apt-get update \
    && sudo apt-get -y install "linux-image-extra-$(uname -r)" linux-image-extra-virtual \
    && sudo apt-get -y install docker-engine \
    && sudo usermod -aG docker "$USER" \
    && sudo systemctl enable docker \
    && echo -e "\nDocker installed successfully\n" \
    && sudo wget -O /usr/local/bin/docker-compose \
        https://github.com/docker/compose/releases/download/1.11.2/run.sh \
    && sudo chmod +x /usr/local/bin/docker-compose \
    && sudo wget -O /etc/bash_completion.d/docker-compose \
        "https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose" \
    && echo -e "\nDocker Compose installed successfully\n"
