#!/bin/bash

hoy=$(date +"%Y-%m-%d")
mes=$(date +"%m")
ayer=$(date --date='1 day ago' +"%Y-%m-%d")
ahora=$(date +"%Y%m%d%H%M%S")
dia=$(date +"%d")
year=$(date +"%Y")

/usr/bin/curl -v -H "SOAPAction: http://tempuri.org/CitacionCentralizada/action/TratarMensaje.TratarMensaje" -H "Content-Type: text/xml" -d "@/u01/app/oracle/consultas_externas/soapenv.xml" -o /u01/app/oracle/consultas_externas/citaweb.xml http://citacion.sas.junta-andalucia.es/ws_citaweb/ws_citaweb.WSDL

