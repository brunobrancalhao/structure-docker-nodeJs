# Executando o projeto!
Instalar as dependencias do node

```sh
$ cd src
$ yarn install
```

Executando o projeto em ambiente de desenvolvimento

```sh
$ cd ..
$ make run
```

Executando o projeto em ambiente de produção

```sh
$ docker build -t nomeimg/dockernode .
$ docker run -p 3000:3000 -d nomeimg/dockernode
```
