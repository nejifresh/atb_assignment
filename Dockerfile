#Use Node as our base image
FROM node:latest

#Add everything in current directory to app folder in our image
ADD . /app

#Install dependencies
RUN cd /app; \
  npm install --production

#Expose our port
EXPOSE 80

#Run our app
CMD ["node", "/app/app.js"]
