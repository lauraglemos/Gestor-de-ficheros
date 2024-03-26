#!/bin/bash

# Ruta de la carpeta que deseas subir
folder_path_a="/home/gabriel/SO/Notas"
folder_path_b="/home/gabriel/SO/Apuntes"

# Nombre de la configuración remota en rclone
remote_name="drive"

# Subir la carpeta y sus archivos a Google Drive
rclone sync "$folder_path_a" "$remote_name:/Notas" --progress --create-empty-src-dirs
rclone sync "$folder_path_b" "$remote_name:/Apuntes" --progress --create-empty-src-dirs

echo "Carpeta y archivos subidos exitosamente a Google Drive."
