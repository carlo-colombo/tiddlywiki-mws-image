

FROM node:24
WORKDIR /app/data
# Initialize TiddlyWiki MWS in 'my-folder'

ADD package.json package-lock.json ./

RUN npm ci
WORKDIR /app/data
EXPOSE 9045
# Start the listener on port 9045
CMD ["npx", "mws", "listen", "--listener", "port=9045", "host=0.0.0.0"]
