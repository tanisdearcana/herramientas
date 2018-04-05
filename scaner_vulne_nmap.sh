#! /bin/bash 
echo Se va a realizar una escaner de vulnerabilidades de la ip  indicada
echo este escaneo simplemente lista la posibles vulnerabilidades que 
echo pueda tener la maquina, no realiza una prueba.
echo "SUDO NMAP -sV IP --script=ruta donde esta el  el scrpt vulscan.nse"


read -p "Introduce la IP o hostname de la maquina a escanear: " dato

sudo nmap -sV $dato --script=/usr/share/nmap/scripts/vulscan/vulscan.nse > escaneo_$dato.txt

echo Escaneo de $dato ha terminado se ha guardado en el fichero escaneo_IP.txt
