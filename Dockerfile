
FROM node:18

WORKDIR /app
RUN npm install -g @medusajs/medusa-cli
RUN medusa new medusa-server --starter
WORKDIR /app/medusa-server
RUN npm install
EXPOSE 9000
CMD ["npm", "run", "start"]
