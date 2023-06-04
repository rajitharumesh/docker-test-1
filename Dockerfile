FROM node
RUN mkdir -p /opt/app
# where is this location
WORKDIR /opt/app
COPY src/package.json src/package-lock.json /
RUN npm install
COPY src/ .
EXPOSE 3000
CMD [ "npm", "start"]