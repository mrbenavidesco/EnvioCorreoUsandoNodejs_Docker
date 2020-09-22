FROM  node:latest
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app/
RUN ls /app/ && chmod +x /app/src/EnviaCorreo.js 

CMD ["node","src/EnviaCorreo.js"]