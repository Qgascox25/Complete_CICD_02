# Utiliza la imagen base de Python 3.6
FROM python:3.6

# Crear un directorio de trabajo
WORKDIR /app

# Copiar los archivos del proyecto
COPY . /app

# Instalar las dependencias de Python
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Instalar pytest
RUN pip install pytest

# Exponer el puerto de la aplicación
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]

