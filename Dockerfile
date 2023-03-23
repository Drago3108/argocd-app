FROM debian
RUN  apt update -y
RUN apt install nodejs -y
WORKDIR /cicd/application
COPY nodeapp/app.js /cicd/application
EXPOSE 5000
CMD ["node","/cicd/application/app.js"]

