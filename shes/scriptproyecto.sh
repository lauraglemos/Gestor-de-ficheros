#!/bin/bash

directorio="/home/samu/Desktop/ProyectoSO/Apuntes"

echo "Dentro de este directorio, los archivos con un posible tag son:"
grep -rn "<<" --exclude="*.sh*" 
echo "----------------------"

for archivo in $directorio
do
	echo "Procesando el archivo: $archivo"
	nombres_totales_tag=$(grep -oP '(?<=<<).*?(?=>>)' "$archivo")
	
	for nombre_tag in "$nombres_totales_tag"
	do
		archivo_salida="$(nombre_tag).txt"
		echo "Guardando en el archivo: $archivo_salida"
		sed -n "/<<${nombre_tag}>>/,/<<<${nombre_tag}>>/p" "$archivo" > "$archivo_salida" 
		
		echo "Se ha guardado el contenido entre los tags '$nombre_tag' del directorio '$directorio' en el archivo '$archivo_salida'"

	done
done
exit 0
