# Define a imagem base que será utilizada para criar a imagem da aplicação.
# A imagem eclipse-temurin:8-jre-alpine contém o Java Runtime Environment (JRE) 8
# e utiliza o Alpine Linux como sistema operacional base.
FROM eclipse-temurin:8-jre-alpine

# Define o diretório de trabalho dentro do container.
# A partir deste diretório serão executados os comandos da aplicação.
# Caso o diretório não exista, ele será criado automaticamente.
WORKDIR /app

# Informa que a aplicação Spring Boot utiliza a porta 8080 dentro do container.
# A porta 8080 é utilizada pelo servidor web incorporado do Spring Boot.
#
# IMPORTANTE:
# O comando EXPOSE apenas informa a porta utilizada pela aplicação.
# Ele não publica a porta para o computador.
EXPOSE 8080

# Copia o arquivo JAR da aplicação Spring Boot, gerado previamente pelo Maven,
# do computador para o diretório /app dentro da imagem.
#
# Arquivo de origem:
# ./target/alomundo_springboot_docker-0.0.1-SNAPSHOT.jar
#
# Arquivo de destino dentro da imagem:
# /app/alomundo_springboot_docker-0.0.1-SNAPSHOT.jar
COPY ./target/alomundo_springboot_docker-0.0.1-SNAPSHOT.jar .

# Define o comando executado automaticamente quando o container for iniciado.
#
# O parâmetro "-jar" informa à JVM que será executado um arquivo JAR.
# Como o WORKDIR foi definido como /app, o arquivo JAR será localizado
# dentro desse diretório.
#
# Ao executar o comando, a aplicação Spring Boot será iniciada.
CMD ["java", "-jar", "./alomundo_springboot_docker-0.0.1-SNAPSHOT.jar"]