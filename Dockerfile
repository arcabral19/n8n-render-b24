# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY . .

# Instala as dependências
RUN npm install --omit=dev

# Expõe a porta do n8n
EXPOSE 5678

# Comando para iniciar o n8n
CMD ["n8n"]
