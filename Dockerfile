# Imagen oficial de n8n (versión reciente, Railway construirá a partir de esto)
FROM n8nio/n8n:latest

# Establecemos el directorio de trabajo
WORKDIR /data

# Creamos la carpeta de datos (Railway puede montar volumen aquí si quieres)
RUN mkdir -p /home/node/.n8n

# Variables de entorno por defecto (las sobreescribirás en Railway)
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV NODE_ENV=production

# Ruta de base para webhooks (Railway pone su propio dominio)
# Ejemplo: https://tu-app.up.railway.app/
# n8n usará la combinación N8N_PROTOCOL + WEBHOOK_URL + puerto interno 5678
# Esta la pondrás en Railway como variable de entorno:
# WEBHOOK_URL=https://tu-app.up.railway.app/

# Exponemos el puerto interno de n8n
EXPOSE 5678

# Comando por defecto
CMD ["n8n", "start"]
