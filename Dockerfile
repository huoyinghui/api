# nginx 静态文件
# docker 1: 生成文件
# docker 2: 静态文件
#不可修改: setCustomContext: true
FROM node:8.0.0

WORKDIR /app
ENV NODE_ENV prod

#RUN npm config set proxy http://192.168.0.18:10081

# RUN npm install pm2 -g
COPY . /app/

# RUN apt-get update -y && apt-get install vim -y
RUN npm install && npm rebuild

CMD ["node", "/app/app.js"]
