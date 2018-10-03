#!  /bin/bash
echo Script para analizar IP publica, si dicha IP esta en lista negra, que tipos de informes
echo tiene la IP con esta informacion ver si se bloquea o no. Se consulta la BBDD de abuseipdb
echo mediante mi API.
echo  Ejemplo: curl https://www.abuseipdb.com/check/IP/json?key=IcyAdCHVoJZHqt7X5CJJdI6kF4TpM2j15y1XHPcX
read -p "Introduce la IP a analizar: " IP
curl https://www.abuseipdb.com/check/$IP/json?key=bfPq55o6QIRDmQmXDhuN1mEfZpl2u2dlj8TEfjLD
