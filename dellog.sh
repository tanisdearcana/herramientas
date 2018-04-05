#! /bin/bash
sleep 2s
echo Script para borrar datos dentro de un fichero
echo indicado.					  
echo by @tanisdearcana
echo Rutas de ficheros de logs
echo /var/log/auth.log
sleep 2s
read -p "Introduce el dato a borrar: " dato
read -p "Introduce el nombre o ruta del fichero donde borrar:" fichero
read -p "Introduce el nombre del fichero sin el dato borrado:" out
sleep 1s
grep -Rv $dato $fichero>$out
sleep 5s
echo Se ha borrado $dato
cat $out
echo Ahora se  realizar un mv del fichero $out al fichero $fichero
sleep 5s
sudo mv $out $fichero
cat $fichero
