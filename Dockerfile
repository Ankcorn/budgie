FROM node:8.9-alpine
WORKDIR /usr/budgie
COPY ["package.json", "package-lock.json", "package-lock.json", "tsconfig.release.json", "tsconfig.json", "./"]
COPY "src" "./src"
RUN npm install --silent && npm run build
EXPOSE 3000
CMD npm run start:prod