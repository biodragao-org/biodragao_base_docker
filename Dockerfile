# Configured with miniconda for py2
FROM continuumio/miniconda
MAINTAINER Abhinav Sharma (@abhi18av)

#########
### Commands
#########
RUN 	apt update
RUN     conda config --add channels defaults
RUN     conda config --add channels bioconda
RUN     conda config --add channels conda-forge

# setup aria2
RUN 	apt install aria2 sudo curl unzip -y

# setup rclone
RUN 	curl https://rclone.org/install.sh | sudo bash

# setup go_Task
RUN	curl -sL https://taskfile.dev/install.sh | sh


# setup micro
RUN curl https://getmic.ro | bash && mv ./micro /usr/local/bin/
