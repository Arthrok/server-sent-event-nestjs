FROM node:20-slim

RUN apt-get update -y && apt-get install -y openssl

WORKDIR  /home/node/app

# Bundle app source
COPY . .

COPY prisma/schema.prisma ./prisma/
RUN npx prisma generate

USER node

CMD [ "tail", "-f", "/dev/null" ]