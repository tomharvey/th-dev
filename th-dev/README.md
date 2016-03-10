th-dev Cookbook
===============
Sets up my laptop ready for development work

Requirements
------------
See metadata for dependancies.


Extras
======

Docker
-------
Docker isn't nicely supported as a cookbook on OSX
```
sudo installer -pkg /Users/thomasharvey/Downloads/DockerToolbox-1.10.2.pkg
docker-machine create --driver virtualbox docker-machine
echo "eval $(docker-machine env docker-machine)" >> ~/.bash_profile
```