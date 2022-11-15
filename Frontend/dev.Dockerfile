FROM node:lts-alpine

# définit le dossier 'app' comme dossier de travail
WORKDIR /usr/src/app
RUN npm install -g npm@latest

# copie 'package.json' et 'package-lock.json' (si disponible)
COPY package.json ./

# copie les fichiers et dossiers du projet dans le dossier de travail (par exemple : le dossier 'app') (filtrage pour optimiser les temps de build + cache docker)
COPY . .

EXPOSE 8080

CMD ["/bin/sh", "start.sh"]
