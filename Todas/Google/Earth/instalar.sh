#!/bin/bash

#Baixando pre-requisitos
sudo apt-get install wget apt apt-transport-https -y;

#Adicionando a chave e o repositorio da Google
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -;
echo 'deb [arch=amd64] https://dl.google.com/linux/earth/deb/ stable main' | sudo tee --append /etc/apt/sources.list.d/google-earth-pro.list;

#Atualizando a lista de repositorios
sudo apt update;

#Instalando o Google Earth
sudo apt install google-earth-pro-stable -y;
