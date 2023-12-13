#!/bin/bash


sudo adduser saloma
sudo groupadd Allawi

if grep "^saloma:" /etc/passwd; then
echo "user < saloma > already exist."
else
echo "user < saloma > not exist."

fi

if grep "^Allawi:" /etc/group; then
echo "group < Allawi > already exist."
else
echo "group < Allawi > not exist."

fi

echo "user information: "
id "saloma"

echo "group information: "
getent group "Allawi"

echo "saloma added to Allawi group"
sudo usermod -aG "Allawi" "saloma"

echo "user information after adding him to Allawi group: "
id "saloma"

