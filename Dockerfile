# Use a imagem base do Golang
FROM golang:1.22.7

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos do projeto para o diretório de trabalho
COPY . .

# Baixe as dependências do Go
RUN go mod download

# Defina o diretório de trabalho para o diretório do main.go
WORKDIR /app/cmd/ordersystem

# Comando para rodar a aplicação
CMD ["go", "run", "."]