#!/bin/bash

# Función para mostrar procesos en ejecución
ver_procesos() {
    ps aux | less
}
info_proceso() {
    read -p "Ingrese el PID del proceso: " pid
    if ! [[ $pid =~ ^[0-9]+$ ]]; then
        echo "⚠️  PID no válido. Debe ser un número."
        exit 1
    fi
    clear
    echo "Información del proceso con PID $pid:"
    echo "----------------------------------------"
    ps -p $pid -o pid,ppid,cmd,%mem,%cpu,etime
    echo "----------------------------------------"
}
case $1 in
    ver_procesos) ver_procesos ;;
    info_proceso) info_proceso;;
    *) echo "Opción inválida desde procesos.sh" ;;
esac