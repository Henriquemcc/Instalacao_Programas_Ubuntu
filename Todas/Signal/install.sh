#!/bin/bash

#Baixando os pre-requisitos
sudo apt-get install curl apt apt-transport-https -y;

#Adicionando a chave e o repositorio do signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -;
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list;

#Atualizando a lista de repositorios
sudo apt update;

#Instalando o Signal
sudo apt install signal-desktop -y;
