FROM node:20

RUN apt update && apt install -y python3.11-venv

USER node
