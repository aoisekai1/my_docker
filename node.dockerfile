FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

#Bundle app source
COPY . .

CMD ["npm","start"]


# NOTE CREATE CONTAINER AUTO CHANGES IF EDIT ANYTHING FILE IN PROJECT
# sudo docker run --name <container_name> -d -p 3001:3001 -v $PWD:/usr/src/app <image_docker_name>

