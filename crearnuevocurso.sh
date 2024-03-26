#!/bin/bash

read -p "¿Qué curso es el que quieres crear? " directorio_nuevo

if [ -d "Apuntes/$directorio_nuevo" ]
then
	echo "Ya hay una carpeta creada para $directorio_nuevo. Continúa si quieres añadir asignaturas en él"

	read -p "¿Cuántas asignaturas tiene? " numeroasignaturas

	for ((i=1; i<=$numeroasignaturas; i++))
	do
		read -p "Nombre de la asignatura número $i: " nombre_subdirectorio
		mkdir "Apuntes/$directorio_nuevo/$nombre_subdirectorio"
	done
	echo "Creado nuevo directorio y respectivos subdirectorios"
	
	
else
	mkdir "Apuntes/$directorio_nuevo"

	read -p "¿Cuántas asignaturas tiene? " numeroasignaturas

	for ((i=1; i<=$numeroasignaturas; i++))
	do
		read -p "Nombre de la asignatura número $i: " nombre_subdirectorio
		mkdir "Apuntes/$directorio_nuevo/$nombre_subdirectorio"
	done
	echo "Creado nuevo directorio y respectivos subdirectorios"
fi
exit 0

