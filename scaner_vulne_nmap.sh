#! /bin/bash 
echo Se va a realizar una escaner de vulnerabilidades de la ip  indicada
echo este escaneo simplemente lista la posibles vulnerabilidades que 
echo pueda tener la maquina, no realiza una prueba.
echo "SUDO NMAP -T4 IP --script=ruta donde esta el  el scrpt vulscan.nse"
echo
echo
echo
echo Escaneo de Vulnerabilidades con  Script vulscan, este tipo de escaneo es facilmente detectable, 
echo lanzar informando al cliente.
read -p "Introduce la IP o hostname de la maquina a escanear: " dato
sudo nmap -T4 $dato --script=/usr/share/nmap/scripts/vulscan/vulscan.nse > escaneo_$dato.txt
echo Escaneo de $dato ha terminado se ha guardado en el fichero escaneo_IP.txt
echo
#echo Escaneo de puertos y servicios 
#read -p "Introduce la IP o hostname de la maquina a escanear: " dato01
#sudo namp -sSV -T4 $dato01
#echo Escaneo de $dato ha terminado 

