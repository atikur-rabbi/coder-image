# Dockerfile
FROM codercom/enterprise-node:ubuntu

USER root

# docker pull we2app/coder-sfdx:latest
# Add software, files, dev tools, and dependencies here
# RUN apt-get install -y ...
RUN apt-get update
RUN apt-get install -y curl wget openjdk-11-jdk-headless


# RUN wget https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx-linux-x64.tar.xz
# RUN mkdir ~/sfdx
# RUN tar xJf sfdx-linux-x64.tar.xz -C ~/sfdx --strip-components 1
# RUN PATH=~/sfdx/bin:$PATH

RUN npm install sfdx-cli --global
RUN sfdx --version

# COPY file ./

USER coder