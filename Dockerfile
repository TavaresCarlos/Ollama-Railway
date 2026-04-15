FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0:11434

RUN ollama serve & \
    sleep 5 && \
    ollama pull llama3

EXPOSE 11434

ENTRYPOINT ["ollama", "serve"]