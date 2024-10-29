# Proyecto de Automatización para Desarrollo Interno

Este proyecto está diseñado para automatizar tareas comunes durante el desarrollo de aplicaciones, como limpiar carpetas temporales, levantar un servidor WildFly local, y establecer conexiones a través de túneles SSH. La idea es facilitar y agilizar el flujo de trabajo, minimizando tareas repetitivas y permitiendo un entorno de desarrollo listo para usar.

## Características

- **Limpieza de carpetas temporales**: elimina archivos innecesarios para optimizar espacio y rendimiento.
- **Inicio de servidor WildFly**: permite levantar un servidor WildFly localmente de forma rápida.
- **Conexión a través de túneles SSH**: establece túneles SSH de manera automática para conexiones seguras a servicios remotos.

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
