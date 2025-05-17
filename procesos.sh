#!/bin/bash
# Función para mostrar procesos en ejecución
ver_procesos() {
    ps aux | less
}
# Función para ver info de un proceso
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
# Función para frenar un proceso (kill)
matar_proceso() {
    read -p "Ingrese el PID del proceso a terminar: " pid
    if ! [[ "$pid" =~ ^[0-9]+$ ]]; then
        echo "⚠️  **PID no válido**. Debe ser un número."
        exit 1
    fi
    if kill -9 "$pid" 2>/dev/null; then
        echo "**Proceso $pid terminado correctamente.**"
    else
        echo "⚠️  **No se pudo terminar el proceso** (verifique el PID o los permisos)."
    fi
}

case $1 in
    ver_procesos) ver_procesos ;;
    info_proceso) info_proceso;;
    matar_proceso) matar_proceso;;
    *) echo "Opción inválida desde procesos.sh" ;;
esac
