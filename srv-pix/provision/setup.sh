#!/bin/bash

echo "Atualizando pacotes..."
sudo apt-get update -y
sudo apt-get upgrade -y

echo "Instalando dependências..."
sudo apt-get install -y python3 python3-pip

echo "Instalando dependências da aplicação..."
pip3 install -r /srv-pix/app/requirements.txt

echo "Configurando sistema como serviço..."
sudo cp /srv-pix/provision/srv-pix.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable srv-pix.service
sudo systemctl start srv-pix.service

echo "Sistema srv-pix configurado e iniciado!"
