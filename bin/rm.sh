#!/bin/bash

docker stop gitlab-runner
docker rm gitlab-runner
rm -rf `pwd`/config
