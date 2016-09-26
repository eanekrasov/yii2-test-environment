runner
======

Подчистить за собой
    
    docker stop yii2-test-runner
    docker rm yii2-test-runner
    rm -rf `pwd`/config


Запустить

    docker run -d --name yii2-test-runner --restart always \
      --privileged \
      -v `pwd`/config:/etc/gitlab-runner \
      -v /var/run/docker.sock:/var/run/docker.sock \
      gitlab/gitlab-runner:latest


Зарегистрировать

    docker exec -it yii2-test-runner \
      gitlab-runner register --non-interactive \
        --url "http://<gitlab>/ci" \
        --registration-token "<token>" \
        --description "<description>" \
        --executor "docker" \
        --docker-image eanekrasov/yii2-test-environment:latest \
        --docker-mysql latest
