#!/usr/bin/env bash

sudo systemctl enable keyd
sudo systemctl start keyd

sudo mkdir -p /etc/keyd
sudo cp ./default.conf /etc/keyd/default.conf
