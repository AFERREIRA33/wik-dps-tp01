FROM node:14
RUN usermod -d /home/toto -l toto node
WORKDIR /app
RUN npm install
COPY . .
RUN npm run build
USER toto
EXPOSE 3000
CMD ["npm", "start"]