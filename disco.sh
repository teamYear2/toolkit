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
    # Implementar
}

ver_tamano_ruta() {
    echo "[Función de Adriel: Mostrar tamaño de ruta con du -sh]"
    # Implementar
}

listar_archivos_directorio() {
    echo "[Función de Caro: Listar archivos con permisos usando ls -l]"
    # Implementar
}

# Ejecutar el menú
mostrar_menu_disco
