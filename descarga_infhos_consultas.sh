#!/bin/bash

hoy=$(date +"%Y-%m-%d")
mes=$(date +"%m")
ayer=$(date --date='1 day ago' +"%Y-%m-%d")
ahora=$(date +"%Y%m%d%H%M%S")
dia=$(date +"%d")
year=$(date +"%Y")

/usr/bin/curl -v -s -d "td_ap=2-DW2&mes_i=05&mes_f=$mes&layout=txt&fecha_ini=$ayer&fecha_fin=$ayer&f=$ahora&dia_i=$dia&dia_f=$dia&boton=ACEPTAR&area=02037&anio_i=$year&anio_f=$year" -o /u01/app/oracle/consultas_externas/infhos.txt http://10.234.23.171/infhos.php

