#!/bin/bash

#Baixando e instalando pre-requisitos
sudo apt-get install ruby-full build-essential zlib1g-dev -y;

#Adicionando linhas ao arquivo .bashrc
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc;
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc;
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc;

#Carregando arquivo .bashrc
source ~/.bashrc;

#Instalando o jekyll
gem install jekyll bundler;
