#!/bin/bash

case $1 in
    ver_procesos)
        echo "Mostrando procesos en ejecución..."
        echo "Presione 'q' para salir de la vista."
        sleep 1
        ps aux | less
        ;;

    info_proceso)
        read -p "Ingrese el PID del proceso: " pid
        clear
        echo "Información del proceso con PID $pid:"
        echo "----------------------------------------"
        ps -p $pid -o pid,ppid,cmd,%mem,%cpu,etime
        echo "----------------------------------------"
        ;;

    matar_proceso)
        read -p "Ingrese el PID del proceso a terminar: " pid
        if kill -9 $pid 2>/dev/null; then
            echo "Proceso $pid terminado correctamente."
        else
            echo "⚠️  No se pudo terminar el proceso (verifique el PID o permisos)."
        fi
        ;;

    *)
        echo "Parámetro no reconocido. Use: ver_procesos | info_proceso | matar_proceso"
        ;;
esac