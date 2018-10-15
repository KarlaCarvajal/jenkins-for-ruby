#!/bin/bash

if [ -d $(pwd)/jenkins_home ]
then
    echo "Directory jenkins_home exists."
else
    echo "Creating the directory jenkins_home."
    mkdir $(pwd)/jenkins_home
fi

docker build -t machine/jenkins-lts .
docker run --name=server-jenkins -p 8080:8080 -p 50000:50000 -v $(pwd)/jenkins_home:/var/jenkins_home -v $(pwd):/home/DevOps --restart=always machine/jenkins-lts