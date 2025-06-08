#!/bin/bash

# Menú del módulo memoria
mostrar_menu_memoria() {
    while true; do
        clear
        echo "------ Módulo de la Memoria ------"
        echo "1. Ver uso del memoria"
        echo "2. Ver estadisticas de uso del sistema"
        echo "3. Informacion detallada de memoria"
        echo "4. Volver al menú principal"
        echo "-----------------------------"
        read -p "Seleccione una opción: " opcion

        case $opcion in
            1) ver_uso_memoria ;;
            2) ver_estadisticas_sistema ;;
            3) info_detallada_memoria ;;
            4) break ;;
            *) echo "⚠️ Opción no válida. Intente nuevamente."; sleep 2 ;;
        esac

        echo
        read -p "Presione una tecla para continuar..." -n 1 -s
    done
}

# Funciones

ver_uso_memoria() {
    clear
	echo "===== USO DE MEMORIA (RAM / SWAP) ====="
	free -h
	echo "========================================"
}

ver_estadisticas_sistema() {
    
}

info_detallada_memoria() {
       
}

# Ejecutar el menú
mostrar_menu_memoria
