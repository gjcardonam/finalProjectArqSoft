# Usar la imagen base de OpenJDK
FROM openjdk:11-jre-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR generado por Spring Boot al contenedor
COPY target/kbt-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto que usa la aplicación Spring Boot
EXPOSE 8089

# Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
