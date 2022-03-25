# Dockerfile
FROM codercom/enterprise-node:ubuntu

USER root

# Add software, files, dev tools, and dependencies here
# RUN apt-get install -y ...
RUN apt-get update
RUN apt-get install -y curl wget openjdk-11-jdk-headless
RUN wget https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx-linux-x64.tar.xz
RUN mkdir ~/sfdx
RUN tar xJf sfdx-linux-x64.tar.xz -C ~/sfdx --strip-components 1
RUN PATH=~/sfdx/bin:$PATH

# COPY file ./

USER coder

