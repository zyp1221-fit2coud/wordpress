#!/bin/bash

mvn clean package -Dmaven.test.skip=true

docker build -t registry.fit2cloud.com/north/container-service:${branch} .
docker push registry.fit2cloud.com/north/container-service:${branch}
