# Proyecto de Automatización para Desarrollo Interno

Este proyecto está diseñado para automatizar tareas comunes durante el desarrollo de aplicaciones, como limpiar carpetas temporales, levantar un servidor WildFly local, y establecer conexiones a través de túneles SSH. La idea es facilitar y agilizar el flujo de trabajo, minimizando tareas repetitivas y permitiendo un entorno de desarrollo listo para usar.

## Características

- Limpieza de carpetas temporales**: elimina archivos innecesarios para optimizar espacio y rendimiento.
- Inicio de servidor WildFly**: permite levantar un servidor WildFly localmente de forma rápida.
- Conexión a través de túneles SSH**: establece túneles SSH de manera automática para conexiones seguras a servicios remotos.

## Prerrequisitos

- [Git](https://github.com/)
- [Java (JDK) para WildFly](https://www.oracle.com/java/technologies/javase-downloads.html) (si utilizas WildFly)
- [SSH](https://www.openssh.com/) o [sshpass](https://linux.die.net/man/1/sshpass) (opcional para conexión con túneles SSH)
- [WildFly](https://www.wildfly.org/downloads/) (si necesitas levantar el servidor local)

## Instalación

1. Clona el repositorio en tu máquina local:
   ```bash
   git clone https://github.com/tuusuario/nombre-proyecto.git
   cd nombre-proyecto


## Requisitos

Asegúrate de tener instalados los siguientes requisitos:
- Python 3 o Bash (dependiendo de tu configuración preferida)
- SSH (para los túneles SSH)
- Wildfly (si es necesario levantar el servidor localmente)
- Opcional: Node.js o cualquier otra herramienta específica que necesite el proyecto.

## Configuración

Este proyecto usa variables de entorno para configuraciones específicas. Aquí te mostramos cómo configurarlas en Windows y Linux.
Variables de entorno necesarias:
| Variable |        Descripción       |     Ejemplo     |
|----------|--------------------------|-----------------|
| PATH     | ruta al .bat principal   | .../jarvis.bat  |

## Configurar en Windows
- Abre el Panel de control y ve a Sistema y seguridad > Sistema > Configuración avanzada del sistema.
- Haz clic en Variables de entorno....
- En Variables del sistema, selecciona Nueva... para añadir cada variable mencionada en la tabla de arriba con su valor correspondiente.
- Guarda los cambios y reinicia el sistema o la terminal para aplicar las variabl


## Configurar en Linux

1. Abre tu archivo de configuración de shell (~/.bashrc, ~/.zshrc u otro según tu shell).
2. Añade las siguientes líneas al final del archivo:
   ```bash
   export TEMP_FOLDER="/tmp/proyecto_temp"
   export WILDFLY_PATH="/opt/wildfly"
   export SSH_TUNNEL_CMD="ssh -L ..."

3. Guarda el archivo y ejecuta el siguiente comando para cargar las variables:
   ```bash
   source ~/.bashrc


## Contribuir
Las contribuciones son bienvenidas. Si deseas colaborar, por favor sigue estos pasos:

1. Haz un fork del proyecto.
2. Crea una nueva rama (git checkout -b feature/nueva-funcion).
3. Realiza tus cambios y haz commit (git commit -am 'Añadir nueva función').
4. Haz push a la rama (git push origin feature/nueva-funcion).
5. Abre un Pull Request.

## Licencia
Este proyecto está bajo la Licencia MIT. Para más detalles, consulta el archivo LICENSE.
   ```bash
   Este `README.md` cubre los aspectos clave para instalar, configurar, y ejecutar tu proyecto, lo que hará que tus compañeros puedan integrarse rápidamente. Si tienes otros scripts específicos o instrucciones adicionales, puedes añadir más detalles a la sección de "Uso".

