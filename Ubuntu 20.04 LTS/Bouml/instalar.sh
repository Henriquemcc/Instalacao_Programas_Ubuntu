#Instalando pre-requisitos
sudo apt-get install apt wget -y;

#Adicionando repositorios
sudo add-apt-repository --yes ppa:rock-core/qt4;
wget -q https://www.bouml.fr/bouml_key.asc -O- | sudo apt-key add -;
echo "deb [arch=amd64] https://www.bouml.fr/apt/eoan eoan free" | sudo tee -a /etc/apt/sources.list;

#Atualizando lista de repositorios
sudo apt update;

#Instalando bouml
sudo apt install bouml -y;
