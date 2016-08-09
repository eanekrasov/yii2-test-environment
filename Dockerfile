FROM docker:latest

# wtf
RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN curl -L https://github.com/docker/compose/releases/download/1.8.0/run.sh > /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]