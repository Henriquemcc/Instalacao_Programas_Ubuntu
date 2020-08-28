#!/bin/bash

#Baixando e instalando pre-requisitos
sudo apt-get install apt gnupg1 apt-transport-https dirmngr -y;

#Exportando a variavel da chave de instalacao
export INSTALL_KEY=379CE192D401AB61;

#Exportando a variavel do nome da distro debian-like
export DEB_DISTRO=$(lsb_release -sc);

#Adicionando a chave e o repositorio da ookla
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY;
echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | sudo tee  /etc/apt/sources.list.d/speedtest.list;

#Atualizando lista de repositorios
sudo apt update;

#Instalando o speedtest
sudo apt install speedtest -y;
