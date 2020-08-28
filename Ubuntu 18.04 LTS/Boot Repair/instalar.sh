#!/bin/bash

#Instalando pre-requisitos
sudo apt-get install apt apt-transport-https -y;

#Adicionando repositorio ppa
sudo add-apt-repository -y ppa:yannubuntu/boot-repair;

#Atualizando lista de repositorios
sudo apt update;

#Instalando boot-repair
sudo apt install boot-repair -y;
