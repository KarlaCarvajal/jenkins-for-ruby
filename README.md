

## Jenkins container for run Ruby apps pipelines

## Before start

You need to install in your machine Docker tool

## Running the container

Just run the script setup_jenkins.sh

`$ sh setup_jenkins.sh`

The script will build a docker image named `machine/jenkins-lts` and runs a container named `server-jenkins` exposing the ports `8080, 50000`

For do tests you can clone the project:

 `https://github.com/herrera-luis/fake-repo`
 
## Note
 
 The first time when you execute the **setup_jenkins.sh** script in your console you will be see a token password that it's necessary for the installation