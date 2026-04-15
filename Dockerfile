FROM ollama/ollama:latest

# Garante que o Ollama escute em todas as interfaces na porta do Railway
ENV OLLAMA_HOST=0.0.0.0:11434

# Expõe a porta padrão
EXPOSE 11434

# Comando para iniciar o servidor
ENTRYPOINT ["ollama", "serve"]