#!/bin/bash

#Baixando e instalando pre-requisitos
sudo apt-get install apt -y;

#Adicionando repositorio ppa
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer

#Atualizando a lista de repositorios
sudo apt update

#Instalando o grub-customizer
sudo apt install grub-customizer -y
