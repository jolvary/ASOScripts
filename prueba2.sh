#!/bin/bash

read -p "¿Qué directorio deseas eliminar? " directorio

rm -fr $directorio

echo "El archivo" $directorio "se ha eliminado correctamente."
