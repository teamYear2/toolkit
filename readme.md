# 🛠️ Toolkit de Procesos en Bash
Este proyecto es un <strong> menú interactivo</strong> en Bash que permite gestionar procesos en ejecución en un sistema Linux. Es ideal para estudiantes, administradores de sistemas o cualquier persona que quiera practicar scripting en Bash y manejo de procesos.

<figure><img src="menu.png" alt="logo" style="height: 300px;"></figure>


## 📂 Estructura del proyecto
- System
- ├── main_toolkit.sh      # Script principal con el menú
- ├── procesos.sh          # Script que gestiona los procesos según la opción elegida
- ├── memoria.sh           # Script que gestiona la memoria según la opción elegida
- ├── disco.sh             # Script que gestiona el disco según la opción elegida
- └── README.md            # Documentación del proyecto

## 🚀 ¿Cómo ejecutar este proyecto?
Cloná o copiá los archivos a una carpeta local.
Abrí una terminal y navegá al directorio del proyecto.

#### Asigná permisos de ejecución:
- chmod +x main_toolkit.sh
- chmod +x procesos.sh
- Ejecutá el script principal: ./main_toolkit.sh

## 📋 Funcionalidades disponibles
Desde el menú principal podrás:

#### Ver procesos en ejecución
- Muestra todos los procesos actuales del sistema usando ps aux, en modo paginado (less).

#### Ver información detallada de un proceso
- Podés ingresar el PID de un proceso para ver su uso de memoria, CPU, tiempo de ejecución, etc.

#### Matar un proceso
- Permite ingresar el PID de un proceso y finalizarlo con kill -9.

#### Crear archivo
- Permite crear un archivo indicando nombre y extensión requerida.

#### Buscar proceso por nombre
- Busca y lista procesos activos que coincidan con el nombre o parte del nombre ingresado. Usa pgrep para mostrar PID y nombre.
 
#### Módulo de Memoria
- Muestra el uso de memoria RAM y SWAP con `free -h`.
- Muestra información detallada desde `/proc/meminfo`.
- Visualiza estadísticas de bajo nivel con `vmstat`, útil para análisis del rendimiento del sistema.

#### Módulo de Disco
- Ver el uso del disco con df -h, para saber cuánto espacio libre y usado hay en cada partición montada.

- Consultar el tamaño de un archivo o carpeta específica usando du -sh <ruta>.

- Listar archivos y permisos de un directorio con ls -l <directorio>.

### Salir de la app. 


## ✅ Requisitos
- Sistema operativo: Linux

- Intérprete de comandos: bash

- Acceso a una terminal

- Permisos de ejecución

## 💡 Sugerencias de uso
Podés usar este proyecto como base para:

- Crear herramientas administrativas personalizadas.

- Aprender scripting Bash.

- Practicar control de procesos.

- Se recomienda ejecutarlo en una máquina virtual si vas a experimentar con procesos reales.

- Es posible que surjan errores al ejecutar el programa por problemas de "Finales de línea" comunes cuando se programa en windows y se ejecuta en Linux o viceversa. Para solucionar esto una buena opción es usar "dos2unix" en tu sistema Linux sobre el archivo problemático. 
Se instala con:  sudo apt install dos2unix
Se ejecuta sobre cada archivo por ej: dos2unix procesos.sh

