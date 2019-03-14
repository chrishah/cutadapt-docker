FROM ubuntu:18.04

MAINTAINER <christoph.hahn@tugraz.at>

RUN apt-get update && apt-get -y upgrade && apt-get install -y build-essential python3 python3-pip python3-dev && \
	apt-get clean && apt-get purge && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip3 install --upgrade cutadapt
