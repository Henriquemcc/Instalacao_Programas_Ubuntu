#!/bin/sh
sudo apt install dnscrypt-proxy;
sudo cp ./NetworkManager.conf /etc/NetworkManager/NetworkManager.conf;
sudo cp /etc/dnscrypt-proxy/dnscrypt-proxy.toml /etc/dnscrypt-proxy/dnscrypt-proxy.toml.original  # non-idempotent
sudo cp ./dnscrypt-proxy.toml /etc/dnscrypt-proxy/dnscrypt-proxy.toml
sudo cp ./resolv.conf.override /etc/resolv.conf.override
sudo cp ./20-resolv-conf-override /etc/NetworkManager/dispatcher.d/20-resolv-conf-override
sudo ln -f /etc/NetworkManager/dispatcher.d/20-resolv-conf-override /etc/NetworkManager/dispatcher.d/pre-up.d/
sudo systemctl restart NetworkManager
sudo systemctl restart dnscrypt-proxy
