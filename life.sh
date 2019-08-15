#!/bin/bash

###########################################################################
#                                                                         #
# Nome: life.sh                                                           #
#                                                                         #
# Criador: welinton da silva (welitonsant1@gmail.com)                     #
#                                                                         #
# Data: 15/06/2019                                                        #
#                                                                         #
# Descrição: Esse script vai fazer backup dos arquivos e criar um novo    #
#                                                                         #
# Uso: ./life.sh                                                          #
#                                                                         # 
###########################################################################

# Cores

vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"
branco="\033[1;37m"

# Menu
echo "${verdeClaro}
'##::::'##:'########:'##::: ##:'##::::'##:
 ###::'###: ##.....:: ###:: ##: ##:::: ##:
 ####'####: ##::::::: ####: ##: ##:::: ##:
 ## ### ##: ######::: ## ## ##: ##:::: ##:
 ##. #: ##: ##...:::: ##. ####: ##:::: ##:
 ##:.:: ##: ##::::::: ##:. ###: ##:::: ##:
 ##:::: ##: ########: ##::. ##:. #######::
..:::::..::........::..::::..:::.......:::"
echo
echo "${amarelo}
(1) Configuração Interface
(2) Configuração Dhcp"
echo "${vermelhoClaro}(3) Sair"
read -p ">>" numero

if [ "$numero" = "1" ]
then
	clear
	sleep 0.7

	echo "${verdeClaro}
:'######:::'#######::'##::: ##:'########:'####::'######:::'##::::'##:'########:::::'###:::::'######:::::'###:::::'#######::
'##... ##:'##.... ##: ###:: ##: ##.....::. ##::'##... ##:: ##:::: ##: ##.... ##:::'## ##:::'##... ##:::'## ##:::'##.... ##:
 ##:::..:: ##:::: ##: ####: ##: ##:::::::: ##:: ##:::..::: ##:::: ##: ##:::: ##::'##:. ##:: ##:::..:::'##:. ##:: ##:::: ##:
 ##::::::: ##:::: ##: ## ## ##: ######:::: ##:: ##::'####: ##:::: ##: ########::'##:::. ##: ##:::::::'##:::. ##: ##:::: ##:
 ##::::::: ##:::: ##: ##. ####: ##...::::: ##:: ##::: ##:: ##:::: ##: ##.. ##::: #########: ##::::::: #########: ##:::: ##:
 ##::: ##: ##:::: ##: ##:. ###: ##:::::::: ##:: ##::: ##:: ##:::: ##: ##::. ##:: ##.... ##: ##::: ##: ##.... ##: ##:::: ##:
. ######::. #######:: ##::. ##: ##:::::::'####:. ######:::. #######:: ##:::. ##: ##:::: ##:. ######:: ##:::: ##:. #######::
:......::::.......:::..::::..::..::::::::....:::......:::::.......:::..:::::..::..:::::..:::......:::..:::::..:::.......:::
'####:'##::: ##:'########:'########:'########::'########::::'###:::::'######::'########:                                   
. ##:: ###:: ##:... ##..:: ##.....:: ##.... ##: ##.....::::'## ##:::'##... ##: ##.....::                                   
: ##:: ####: ##:::: ##:::: ##::::::: ##:::: ##: ##::::::::'##:. ##:: ##:::..:: ##:::::::                                   
: ##:: ## ## ##:::: ##:::: ######::: ########:: ######:::'##:::. ##: ##::::::: ######:::                                   
: ##:: ##. ####:::: ##:::: ##...:::: ##.. ##::: ##...:::: #########: ##::::::: ##...::::                                   
: ##:: ##:. ###:::: ##:::: ##::::::: ##::. ##:: ##::::::: ##.... ##: ##::: ##: ##:::::::                                   
'####: ##::. ##:::: ##:::: ########: ##:::. ##: ##::::::: ##:::: ##:. ######:: ########:                                   
....::..::::..:::::..:::::........::..:::::..::..::::::::..:::::..:::......:::........::"
echo 
echo "${amarelo}
(1) Configuração interface"
echo "${vermelhoClaro}(2)Voltar"
read -p ">>" a
fi

if [ "$numero" = "2" ]
then
	clear
	sleep 0.7

	 echo "${verdeClaro}
:'######:::'#######::'##::: ##:'########:'####::'######:::'##::::'##:'########:::::'###:::::'######:::::'###:::::'#######::
'##... ##:'##.... ##: ###:: ##: ##.....::. ##::'##... ##:: ##:::: ##: ##.... ##:::'## ##:::'##... ##:::'## ##:::'##.... ##:
 ##:::..:: ##:::: ##: ####: ##: ##:::::::: ##:: ##:::..::: ##:::: ##: ##:::: ##::'##:. ##:: ##:::..:::'##:. ##:: ##:::: ##:
 ##::::::: ##:::: ##: ## ## ##: ######:::: ##:: ##::'####: ##:::: ##: ########::'##:::. ##: ##:::::::'##:::. ##: ##:::: ##:
 ##::::::: ##:::: ##: ##. ####: ##...::::: ##:: ##::: ##:: ##:::: ##: ##.. ##::: #########: ##::::::: #########: ##:::: ##:
 ##::: ##: ##:::: ##: ##:. ###: ##:::::::: ##:: ##::: ##:: ##:::: ##: ##::. ##:: ##.... ##: ##::: ##: ##.... ##: ##:::: ##:
. ######::. #######:: ##::. ##: ##:::::::'####:. ######:::. #######:: ##:::. ##: ##:::: ##:. ######:: ##:::: ##:. #######::
:......::::.......:::..::::..::..::::::::....:::......:::::.......:::..:::::..::..:::::..:::......:::..:::::..:::.......:::
'########::'##::::'##::'######::'########::                                                                                
 ##.... ##: ##:::: ##:'##... ##: ##.... ##:                                                                                
 ##:::: ##: ##:::: ##: ##:::..:: ##:::: ##:                                                                                
 ##:::: ##: #########: ##::::::: ########::                                                                                
 ##:::: ##: ##.... ##: ##::::::: ##.....:::                                                                                
 ##:::: ##: ##:::: ##: ##::: ##: ##::::::::                                                                                
 ########:: ##:::: ##:. ######:: ##::::::::                                                                                
........:::..:::::..:::......:::..:::::::::"        
echo 
echo "${amarelo}
(1) Pacote Isc-Dhcp-Server
(2) Configuração Dhcp"
echo "${vermelhoClaro}(3) Voltar"
read -p ">>" b
fi

if [ "$numero" = "3" ]
then
	sleep 0.2
	exit
fi

if [ "$a" = "1" ]
then
	clear 
echo "${cyanClaro}configurando o interfaces..."
sleep 0.6
	#diretorio do arquivo interface
	cd /etc/network/
# vai remoniar o arquivo para servir de bkp
mv interfaces interfaces.original
# novo arquivo
touch interfaces

echo "source /etc/network/interfaces.d/*
auto lo
iface lo inet loopback" >> interfaces

echo >> interfaces

echo "allow-hotplug enp0s3
auto enp0s3
iface enp0s3 inet dhcp" >> interfaces

echo >> interfaces
echo "allow-hotplug enp0s8
auto enp0s8
iface enp0s8 inet static" >> interfaces

echo >> interfaces

echo "address 192.168.0.1
netmask 255.255.255.0
network 192.168.0.0
broadcast 192.168.0.255" >> interfaces
echo "${azulClaro}Concluido.."
sleep 0.3
cd /home/welinton/life2 && sh life.sh
fi

if [ "$a" = "2" ]
then
	echo "${purpleClaro}Voltando....."
	sleep 0.4
cd /home/welinton/life2 && sh life.sh
fi

if [ "$b" = "1" ]
then
	echo "${cyanClaro}Instalando o pacote isc-dhcp-server"
sleep 0.3
apt-get install isc-dhcp-server -y &&
cd /etc/default/
mv isc-dhcp-server isc-dhcp-server.original
touch isc-dhcp-server
echo 'INTERFACESv4="enp0s8"' >> isc-dhcp-server
echo 'INTERFACESv6=""' >> isc-dhcp-server
echo "${azulClaro}Instalado com sucesso..."
sleep 0.4
cd /home/welinton/life2 && sh life.sh
fi

if [ "$b" = "2" ]
then
	echo "${cyanClaro}Configuração do Dhcp"
	sleep 0.5
	cd /etc/dhcp/
mv dhcpd.conf dhcpd.conf.original
touch dhcpd.conf

echo "ddns-update-style none;
option domain-name-servers 192.168.0.1;
default-lease-time 600;
max-lease-time 7200;
authoritative;
log-facility local7;
subnet 192.168.0.0 netmask 255.255.255.0{
        range 192.168.0.50 192.168.0.100;
        option routers 192.168.0.1;
}" >> dhcpd.conf

apt-get install apache2 -y
apt-get install ssh -y
echo "${azulClaro} Configurado com sucesso..."
sleep 0.5
cd /home/welinton/life2 && sh life.sh
fi

if [ "$b" = "3" ]
then
	echo "${cyanClaro}Voltando"
	sleep 0.4
	cd /home/welinton/life2 && sh life.sh
fi