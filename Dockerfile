## Comando obrigatório
## Baixa a imagem do node com versão alpine (versão mais simplificada e leve)
FROM node:alpine

# Create working directory
RUN mkdir -p /var/www

## Define o local onde o app vai ficar no disco do container
## Pode ser o diretório que você quiser
WORKDIR /var/www

## Copia tudo que começa com package e termina com .json para dentro da pasta /var/www
COPY src/ /var/www

#copy .env
COPY config/.env /var/www

## Executa npm install para adicionar as dependências e criar a pasta node_modules
RUN cd /var/www && yarn install --no-dev

## Container ficará ouvindo os acessos na porta 3000
EXPOSE 3000

## Não se repete no Dockerfile
## Executa o comando npm start para iniciar o script que que está no package.json
CMD yarn start