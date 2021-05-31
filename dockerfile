FROM node:10-alpine
MAINTAINER Phimes

RUN \
    echo "==> Install app..."                && \
    npm install -g --production json-server  && \
    \
    \
    echo "==> Remove unused temp..."         && \
    rm -rf /root/.npm                  \
           /usr/lib/node_modules/npm

# configure

EXPOSE 3000
VOLUME [ "/data" ]
WORKDIR /data
COPY db.json /data/
COPY routes.json /data/
# Define default command.
ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD ["--help"]