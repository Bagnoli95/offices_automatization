import subprocess

# Ruta al archivo .bat
bat_file = r"C:\dev\wildfly-20.0.0.Final\bin\standalone.bat"

# Ejecutar el archivo .bat
subprocess.run(bat_file, shell=True)
