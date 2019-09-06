#!/bin/bash
set -x
container=$(buildah from --name helloworld_container python:3)
buildah run $container pip install flask
buildah run $container pip install flask_restful
buildah copy $container helloworld.py /
buildah config --port 5000 $container
buildah config --env FLASK_APP=helloworld.py $container
buildah config --cmd "flask run --host=0.0.0.0" $container
buildah commit $container helloworld
