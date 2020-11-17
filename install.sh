sudo apt-get update

sudo apt-get install sqlmap

clear
echo -e "\e[1;31mDESEA ABRIR SQLMAP-AUT ->yes<- o ->Ctrl+C<- Para salir  \e[0m"
read -p "SqlMap>>> " yes
bash SqlMap-Aut.sh
