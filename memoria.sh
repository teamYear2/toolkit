#!/bin/bash

# Verificar que los comandos necesarios estèn instalados
for cmd in vmstat free head; do
    if ! command -v $cmd &> /dev/null; then
        echo "El comando '$cmd' no està instalado."
        echo "Se puede instalar con: sudo apt install procps"
        exit 1
    fi
done

# Menú del módulo memoria
mostrar_menu_memoria() {
    while true; do
        clear
        echo "------ Módulo de la Memoria ------"
        echo "1. Ver uso de la memoria"
        echo "2. Ver memoria virtual"
        echo "3. Ver estadisticas de uso del sistema"
        echo "4. Informacion detallada de memoria"
        echo "5. Volver al menú principal"
        echo "-----------------------------"
        read -p "Seleccione una opción: " opcion

        case $opcion in
            1) ver_uso_memoria ;;
            2) ver_memoria_virtual ;;
            3) ver_estadisticas_sistema ;;
            4) info_detallada_memoria ;;
            5) break ;;
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

ver_memoria_virtual() {
    clear
    echo "===== /proc/meminfo ====="
    echo "-------------------------"
    head -n 10 /proc/meminfo
    echo
    echo "vmstat (5 muestras cada 1 segundo):"
    echo "-----------------------------------"
    vmstat 1 5
}

ver_estadisticas_sistema() {
    :
}

info_detallada_memoria() {
    :  
}

# Ejecutar el menú
mostrar_menu_memoria
