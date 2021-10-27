# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Unzip
apt-get install unzip -y && \
# need wget
apt-get install wget -y && \
# vim
apt-get install vim -y 


################################
# Install Terraform
################################

# Install required packages

RUN apt-get install -y gnupg software-properties-common curl

# Add the HashiCorp GPG key

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add offcial HashiCorp Linux repository

RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

RUN apt-get update

# Install Terraform

RUN apt-get install terraform



## OLD Code  ##
# Download terraform for linux
# RUN wget https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_linux_amd64.zip

# Unzip
# RUN unzip terraform_0.13.5_linux_amd64.zip

# Move to local bin
# RUN mv terraform /usr/local/bin/

# Check that it's installed
RUN terraform --version 

################################
# Install python
################################

RUN apt-get install -y python3
RUN ln -s /usr/bin/python3 python
RUN apt-get install iputils-ping -y
#RUN installs ping
RUN apt-get install curl -y
#RUN installs curl

RUN python3 
RUN apt-get -y install python3-pip
RUN pip3 install --upgrade pip
RUN pip --version
# install prep for pip
RUN apt-get install -y build-essential 
# install requests
RUN pip install requests 
# install dotenv
RUN pip install python-dotenv 


#################################
# Install Git
#################################

# RUN apt install -y git
# RUN git --version

################################
# Install Ping
###############################



