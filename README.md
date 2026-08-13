# Alomundo Spring Boot com Docker

Aplicação **Alomundo** desenvolvida em **Java com Spring Boot** e executada em um container Docker.

## Sobre o projeto

- O projeto foi desenvolvido utilizando o **NetBeans**.
- O nome do projeto deve ser **alomundo_springboot_docker**.
- Utiliza o **Java 8**.
- Utiliza o **Spring Boot** para desenvolvimento da aplicação web.
- Utiliza o **Apache Maven** para automatizar o processo de construção da aplicação.
- Utiliza o **Docker** para criar uma imagem e executar a aplicação em um container.
- A aplicação utiliza a porta **8080** para receber requisições HTTP.

## Comandos Docker
- Utilizer o terminal do powershel em modo administrador.

### Construir a aplicação
 - docker build -t alomundospringboot_docker .

### Rodar a aplicação
 - docker run --rm -p 8080:8080 alomundospringboot_docker

### Abra o navegador em:
 - http://localhost:8080/

### Remover imagem
 - docker rmi alomundo_springboot_docker
