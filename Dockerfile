# Dockerfile
FROM codercom/enterprise-base:ubuntu

USER root

# Add software, files, dev tools, and dependencies here
# RUN apt-get install -y ...
RUN apt-get update
COPY file ./

USER coder


