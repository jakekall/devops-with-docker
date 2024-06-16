FROM node:16-alpine
EXPOSE 5000
WORKDIR /usr/src/app
COPY package* ./
RUN npm install && \
    npm install -g serve
COPY . . 
RUN npm run build && \
    adduser --disabled-password --gecos "" appuser
USER appuser
CMD ["serve", "-s", "-l", "5000", "build"]
