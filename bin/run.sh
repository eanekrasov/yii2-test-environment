#!/bin/bash

docker run -d --name gitlab-runner --restart always \
  --privileged \
  -v `pwd`/config:/etc/gitlab-runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:latest
