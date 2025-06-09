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
        echo "2. Ver estadisticas de uso del sistema"
        echo "3. Informacion detallada de memoria (10 lineas)"
        echo "4. Informacion detallada de memoria (completa)"
        echo "5. Volver al menú principal"
        echo "-----------------------------"
        read -p "Seleccione una opción: " opcion

        case $opcion in
            1) ver_uso_memoria ;;
            2) ver_estadisticas_sistema ;;
            3) info_detallada_memoria ;;
            4) info_detallada_memoria_cat ;;
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

ver_estadisticas_sistema() {
    clear
	echo "===== ESTADÍSTICAS DE SISTEMA (vmstat 1 5) ====="
	vmstat 1 5
	echo "========================================"
}

info_detallada_memoria() {
    clear
	echo "===== INFORMACIÓN DETALLADA DE MEMORIA (/proc/meminfo) ====="
	head -n 10 /proc/meminfo
	echo "========================================"
}

info_detallada_memoria_cat() {
    clear
	echo "===== INFORMACIÓN DETALLADA DE MEMORIA (/proc/meminfo) ====="
	cat /proc/meminfo
	echo "========================================"
}

# Ejecutar el menú
mostrar_menu_memoria
