

FROM node:22
WORKDIR /app
# Initialize TiddlyWiki MWS in 'my-folder'
RUN npm init @tiddlywiki/mws@latest data
WORKDIR /app/data
EXPOSE 9045
# Start the listener on port 9045
CMD ["npx", "mws", "listen", "--listener", "port=9045", "host=0.0.0.0"]
