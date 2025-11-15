# Imagen oficial de n8n
FROM n8nio/n8n:latest

# (Opcional) directorio de trabajo donde n8n guarda datos
WORKDIR /home/node/.n8n

# Aseguramos que exista la carpeta de datos
RUN mkdir -p /home/node/.n8n

# SOLO definimos el puerto interno
# El host y protocolo los vas a poner en Railway como variables de entorno
ENV N8N_PORT=5678

# Exponemos el puerto interno de n8n
EXPOSE 5678

# Comando por defecto
CMD ["n8n", "start"]
