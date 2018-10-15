FROM jenkins/jenkins:lts

USER root 
RUN apt-get update
RUN apt-get install -y ruby-full nano
RUN gem install bundler
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt