FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@9
COPY package*.json .
# COPY themes ./themes
# COPY extensions ./extensions
# COPY public ./public
# COPY media ./media
# COPY config ./config
# COPY translations ./translations
COPY . .
RUN npm install
RUN npm run build

EXPOSE 80
CMD ["npm", "run", "start"]
