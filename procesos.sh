#!/bin/bash

# Función para mostrar procesos en ejecución
ver_procesos() {
    ps aux | less
}

case $1 in
    ver_procesos) ver_procesos ;;
    *) echo "Opción inválida desde procesos.sh" ;;
esac
