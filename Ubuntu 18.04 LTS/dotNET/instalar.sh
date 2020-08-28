#!/bin/bash

#Baixando e instalando pre-requisitos
sudo apt-get install apt wget apt-transport-https -y;

#Baixando e instalando a configuracao apt para pacotes Microsoft
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb;
sudo dpkg -i packages-microsoft-prod.deb;

#Adicionando repositorio
sudo add-apt-repository universe;

#Atualizando lista de repositorios
sudo apt update;

#Instalando dotnet
sudo apt install dotnet-sdk-3.1 aspnetcore-runtime-3.1 -y;
