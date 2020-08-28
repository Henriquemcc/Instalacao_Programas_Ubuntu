#!/bin/bash

#Baixando e instalando pre-requisitos
sudo apt-get install wget apt apt-transport-https -y;

#Adicionando a chave e o repositorio da Google
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main' | sudo tee --append /etc/apt/sources.list.d/google-chrome.list;

#Atualizando a lista de repositorios
sudo apt update;

#Instalando o Google Chrome versao estavel
sudo apt install google-chrome-stable -y;
