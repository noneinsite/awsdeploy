FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

ENV LC_CTYPE C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

# Run essentials
RUN sed -i -e "s/http:\/\/archive.ubuntu.com/http:\/\/ap-southeast-1.ec2.archive.ubuntu.com/g" /etc/apt/sources.list

# Run updates
RUN apt-get update && apt-get upgrade -y

# Get essential packages
RUN apt-get install -y gnupg curl apt-utils git

# Get Zip functions
RUN apt-get install -y zip unzip

# Get AWS CLI
RUN apt-get install -y awscli
