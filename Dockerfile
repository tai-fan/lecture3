FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY . .

RUN chmod +x .github/scripts/*.sh

ENTRYPOINT ["/bin/bash", ".github/scripts/entrypoint.sh"]
