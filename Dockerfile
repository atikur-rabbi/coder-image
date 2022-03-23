# Dockerfile
FROM codercom/enterprise-base:ubuntu

USER root

# Add software, files, dev tools, and dependencies here
# RUN apt-get install -y ...
COPY file ./

USER coder


