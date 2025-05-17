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

crear_archivo() {
    echo "Ingrese el nombre del archivo sin su extensión:"
    read nombre

    if [[ -z "$nombre" || ${#nombre} -lt 3 ]]; then 
        echo "El nombre del archivo no puede estar vacío ni tener menos de 3 letras."
        return
    else 
        echo "Nombre del archivo guardado correctamente: $nombre"
    fi

    echo "Ingrese la extensión del archivo (Por ej: sh, txt, py, etc):"
    read extension 

    if [[ -z "$extension" || ${#extension} -lt 2 ]]; then 
        echo "La extensión no puede estar vacía y debe tener al menos 2 caracteres."
        return
    else 
        echo "La extensión del archivo se guardó correctamente: $extension"
    fi

    archivo="${nombre}.${extension}"

    if [[ -e "$archivo" ]]; then
        echo "El archivo '$archivo' ya existe. No se creó uno nuevo."
    else
        touch "$archivo"
        echo "Archivo '$archivo' creado exitosamente."
    fi
}

case $1 in
    ver_procesos) ver_procesos ;;
    info_proceso) info_proceso;;
    matar_proceso) matar_proceso;;
    crear_archivo) crear_archivo;;
    *) echo "Opción inválida desde procesos.sh" ;;
esac
