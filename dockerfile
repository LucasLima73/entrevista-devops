# Usar uma imagem base com Node.js
FROM node:18

# Criar e definir o diretório de trabalho
WORKDIR /usr/src/app

# Copiar o package.json e instalar as dependências
COPY package*.json ./
RUN npm install

# Copiar o restante dos arquivos
COPY . .

# Definir o comando padrão para iniciar a aplicação
CMD ["node", "app.js"]
