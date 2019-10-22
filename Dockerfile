# Dockerfile
# 使用node做为镜像
FROM node:10.15.3-alpine
# 在容器中创建该目录
RUN mkdir -p /home/project
# 设置容器的工作目录为该目录
WORKDIR /home/project 
COPY ./ /home/project
RUN CMD npm install --production
# 向外提供7001端口
EXPOSE 7001
CMD ['npm','run','start']
