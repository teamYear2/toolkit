# Evidencia 2 - Toolkit de administración de procesos
#!/bin/bash

# Función que muestra el menú principal
mostrar_menu() {
    clear
    echo "-------------------------------------"
    echo "       Menú Principal - Toolkit"
    echo "-------------------------------------"
    echo "1. Ver procesos en ejecución"
    echo "2. Información detallada de un proceso"
    echo "3. Enviar señal (kill) a un proceso"
    echo "4. Crear archivo"
    echo "5. Salir"
    echo "-------------------------------------"
}

# Función que lee la opción del usuario
leer_opcion() {
    read -p "Seleccione una opción: " opcion
}

# Llamar al script 'procesos.sh' con el parámetro adecuado
procesar_opcion() {
    case $1 in
        1) bash procesos.sh ver_procesos ;;
        2) bash procesos.sh info_proceso ;;
        3) bash procesos.sh matar_proceso ;;
        4) bash procesos.sh crear_archivo ;;
        5) echo "Saliendo..."; exit 0 ;;
        *) echo "Opción no válida." ;;
    esac
}

# Bucle principal
while true; do
    mostrar_menu
    leer_opcion
    procesar_opcion $opcion
    echo
    read -p "Presione una tecla para continuar..." -n 1 -s
done

