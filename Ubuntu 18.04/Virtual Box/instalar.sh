wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib";
sudo apt update;
sudo apt install virtualbox-6.1 -y;
sudo /sbin/vboxconfig;
