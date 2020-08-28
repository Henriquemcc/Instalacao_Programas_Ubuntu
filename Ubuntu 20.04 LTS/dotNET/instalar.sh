#!/bin/bash

#Baixando e instalando pre-requisitos
sudo apt-get install apt wget apt-transport-https -y;

#Baixando e instalando a configuracao apt para pacotes Microsoft
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb;
sudo dpkg -i packages-microsoft-prod.deb;

#Atualizando lista de repositorios
sudo apt update;

#Instalando dotnet
sudo apt install dotnet-sdk-3.1 aspnetcore-runtime-3.1 -y;
