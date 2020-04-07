# Configured with miniconda for py2
FROM continuumio/miniconda
MAINTAINER Abhinav Sharma (@abhi18av)

#########
### Commands
#########
RUN     conda config --add channels defaults
RUN     conda config --add channels bioconda
RUN     conda config --add channels conda-forge



