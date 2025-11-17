# ---------------------------
# Stage 1 — build (Maven + JDK 21)
# ---------------------------
FROM maven:3.9.11-eclipse-temurin-21 AS build

# Defina diretório de trabalho dentro do container
WORKDIR /workspace

# Copia apenas o necessário para aproveitar cache do Docker (dep caching)
COPY pom.xml mvnw ./
COPY .mvn .mvn

# Torna o wrapper executável
RUN chmod +x mvnw

# Baixa dependências em modo offline (melhora cache entre builds)
RUN ./mvnw -B -DskipTests dependency:go-offline

# Copia o restante do código-fonte
COPY src ./src

# Build do projeto (gera target/)
# Usamos package padrão do quarkus -> gera target/quarkus-app/quarkus-run.jar
RUN ./mvnw -B -DskipTests package

# ---------------------------
# Stage 2 — runtime (JRE mais leve)
# ---------------------------
FROM eclipse-temurin:21-jre-jammy

WORKDIR /app

# Copia o quarkus-app gerado no estágio de build
COPY --from=build /workspace/target/quarkus-app /app

# Porta exposta (ajuste se seu app usa outra)
EXPOSE 8080

# Comando de inicialização
CMD ["java", "-jar", "/app/quarkus-run.jar"]
