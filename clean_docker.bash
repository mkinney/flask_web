#!/bin/bash

# clean up our flask-tutorial containers
flask_tutorial_containers=`docker ps -a --filter ancestor=flask-tutorial -q`
for container in $flask_tutorial_containers
do
  docker rm -f $container
done

# clean up dangling images
dangling_imgages=`docker images --filter "dangling=true" -q`
for image in $dangling_imgages
do
  docker rmi -f $image
done

# clean up flask-tutorial images
flask_tutorial_imgages=`docker images flask-tutorial -q`
for image in $flask_tutorial_imgages
do
  docker rmi -f $image
done
