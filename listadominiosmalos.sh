#!/bin/bash
#Descargo a un fichero la lista de dominios con malware

curl "http://malwaredomains.lehigh.edu/files/spywaredomains.zones" > dominiosdnsabloquear 
echo Fichero con listado de dominios con malware descargado......
echo Espera unos instantes se esta formateando el fichero para que sea admitido por pihole
echo ........
#Formatear el fichero a siguiente formato 0.0.0.0 ejemplo.com para que pihole lo admita
sed -i 's/zone/0.0.0.0/g' dominiosdnsabloquear
sed -i 's/ "/ /g' dominiosdnsabloquear
sed -i 's/" / /g' dominiosdnsabloquear
sed -i 's/{type master; file/ /g' dominiosdnsabloquear
sed -i 's/blockeddomain.hosts";}/ /g' dominiosdnsabloquear
sed -i 's/;/ /g' dominiosdnsabloquear
sed -i 's/etc/ /g' dominiosdnsabloquear
sed -i 's/namedb/ /g' dominiosdnsabloquear
grep -v // dominiosdnsabloquear > limpiotohole
rm dominiosdnsabloquear

echo Fin del proceso, se puede subir a github para  que pihole corte estos dominios