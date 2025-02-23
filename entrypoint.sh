#!/bin/bash
set -e

echo "Limpiando el contenido de /landing-ladetec..."
rm -rf /landing-ladetec/*

echo "Copiando archivos estáticos a /landing-ladetec..."
cp -R /built-files/* /landing-ladetec/

echo "Actualización completada."
# Mantiene el contenedor vivo
# echo "Manteniendo el contenedor en ejecución..."
# tail -f /dev/null