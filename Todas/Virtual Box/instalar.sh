#!/bin/bash

#Baixando e instalando pre-requisitos
sudo apt-get install apt apt-transport-https wget -y;

#Adicionando a chave e o repositorio do Virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib";

#Atualizando a lista de repositorios
sudo apt update;

#Instalando o Virtualbox 6.1
sudo apt install virtualbox-6.1 -y;

#Configurando os modulos do Virtualbox no Kernel Linux
sudo /sbin/vboxconfig;
