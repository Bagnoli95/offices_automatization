import os
import shutil
import ctypes
from ctypes import wintypes

# Obtener la ruta de la carpeta de descargas del usuario
downloads_path = os.path.join(os.path.expanduser("~"), "Downloads")

# Eliminar todos los archivos de la carpeta de descargas
def clear_downloads_folder():
    if os.path.exists(downloads_path):
        for filename in os.listdir(downloads_path):
            file_path = os.path.join(downloads_path, filename)
            try:
                if os.path.isfile(file_path) or os.path.islink(file_path):
                    os.remove(file_path)  # Eliminar archivo
                elif os.path.isdir(file_path):
                    shutil.rmtree(file_path)  # Eliminar carpeta
                print(f'Eliminado: {file_path}')
            except Exception as e:
                print(f'No se pudo eliminar {file_path}. Razón: {e}')
    else:
        print("La carpeta de descargas no existe.")

# Vaciar la papelera de reciclaje
def empty_recycle_bin():
    try:
        # Accede a la función SHEmptyRecycleBinW de shell32.dll
        SHEmptyRecycleBin = ctypes.windll.shell32.SHEmptyRecycleBinW
        SHERB_NOCONFIRMATION = 0x00000001  # Evitar confirmación del usuario
        SHERB_NOPROGRESSUI = 0x00000002   # No mostrar UI de progreso
        SHERB_NOSOUND = 0x00000004        # No reproducir sonido al vaciar

        result = SHEmptyRecycleBin(None, None, SHERB_NOCONFIRMATION | SHERB_NOPROGRESSUI | SHERB_NOSOUND)

        if result == 0:
            print("Papelera de reciclaje vaciada correctamente.")
        else:
            print(f"Error al vaciar la papelera de reciclaje. Código de error: {result}")

    except Exception as e:
        print(f'Error al vaciar la papelera de reciclaje: {e}')

# Ejecutar las funciones
if __name__ == "__main__":
    clear_downloads_folder()
    empty_recycle_bin()

    # Esperar a que el usuario presione una tecla para cerrar
    input("Presiona cualquier tecla para cerrar...")
