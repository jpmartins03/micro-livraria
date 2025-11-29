# Imagem base derivada do Node
FROM node

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto para a pasta /app da imagem
COPY . /app

# Instala as dependências
RUN npm install

# Comando para rodar o serviço de Shipping
CMD ["node", "services/shipping/index.js"]