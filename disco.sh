#!/bin/bash

# Menú del módulo disco
mostrar_menu_disco() {
    while true; do
        clear
        echo "------ Módulo de Disco ------"
        echo "1. Ver uso del disco"
        echo "2. Ver tamaño de una ruta"
        echo "3. Listar archivos de un directorio"
        echo "4. Volver al menú principal"
        echo "-----------------------------"
        read -p "Seleccione una opción: " opcion

        case $opcion in
            1) ver_uso_disco ;;
            2) ver_tamano_ruta ;;
            3) listar_archivos_directorio ;;
            4) break ;;
            *) echo "⚠️ Opción no válida. Intente nuevamente."; sleep 2 ;;
        esac

        echo
        read -p "Presione una tecla para continuar..." -n 1 -s
    done
}

# Funciones

ver_uso_disco() {
    echo "[Función de Nahuel: Mostrar uso del disco con df -h]"
    df -h | awk 'NR==1 || /^\/dev\//'
}

ver_tamano_ruta() {
    echo "[Función de Adriel: Mostrar tamaño de ruta con du -sh]"
    # Implementar
}

listar_archivos_directorio() {
       # Mostrar mensaje inicial para el usuario
        echo "Listar archivos de un directorio con sus permisos"
       # Pedir la ruta al usuario
    read -p "Ingrese la ruta del directorio que desea listar: " rutaUsuario
       # Verificar si la ruta existe y es un directorio
    if [ -d "$ruta" ]; then
        echo -e "\nArchivos en '$ruta':"
        ls -l "$ruta"
    else
        echo "La ruta ingresada no es un directorio válido."
    fi
}

# Ejecutar el menú
mostrar_menu_disco
