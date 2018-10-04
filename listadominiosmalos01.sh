#!/bin/bash
#Descargo a un fichero la lista de dominios con malware

curl "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=bindconfig&showintro=0&mimetype=plaintext" > dominiosabloquear01 
echo Fichero con listado de dominios con malware descargado......
echo Espera unos instantes se esta formateando el fichero para que sea admitido por pihole
echo ........
#Formatear el fichero a siguiente formato 0.0.0.0 ejemplo.com para que pihole lo admita
sed -i 's/zone/127.0.0.1/g' dominiosabloquear01
sed -i 's/ "/ /g' dominiosabloquear01
sed -i 's/" / /g' dominiosabloquear01
sed -i 's/{type master; file/ /g' dominiosabloquear01
sed -i 's/blockeddomain.hosts";}/ /g' dominiosabloquear01
sed -i 's/;/ /g' dominiosabloquear01
sed -i 's/etc/ /g' dominiosabloquear01
sed -i 's/namedb/ /g' dominiosabloquear01
grep -v // dominiosabloquear01 > limpio01
awk -F ' ' '{print $1,$2}' limpio01 > limpiotohole01
rm dominiosabloquear01

echo Fin del proceso, se puede subir a github para  que pihole corte estos dominios
