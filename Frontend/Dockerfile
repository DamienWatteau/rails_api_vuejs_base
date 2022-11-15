FROM node:lts-alpine as build

# définit le dossier 'app' comme dossier de travail
WORKDIR /app

# copie 'package.json' et 'package-lock.json' (si disponible)
COPY package*.json ./

# installe les dépendances du projet
RUN npm install

# copie les fichiers et dossiers du projet dans le dossier de travail (par exemple : le dossier 'app') (filtrage pour optimiser les temps de build + cache docker)
COPY src/ ./src/
COPY public/ ./public/
COPY *js* ./
COPY .env* ./
COPY README* ./


# construit l'app pour la production en la minifiant
RUN npm run build

#CONTAINER de RUN : un nginx sur le dossier dist buildé au dessus et c'est tout
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=build /app/dist/ /usr/share/nginx/html/
