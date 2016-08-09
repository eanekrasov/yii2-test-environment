

runner
======

Подчистить за собой
    
    bin/rm.sh

Запустить

    bin/run.sh


Зарегистрировать

    docker exec -it gitlab-runner \
      gitlab-runner register --non-interactive \
        --url "http://gitlab/ci" \
        --registration-token "<token>" \
        --description "<description>" \
        --executor "docker" \
        --docker-image eanekrasov/yii2-test-environment:latest \
        --docker-mysql latest
