FROM node:4.2.2-wheezy
MAINTAINER felipe.japm@gmail.com

ENV DEBIAN_FRONTEND noninteractive
EXPOSE 8891

RUN apt-get update && \
    apt-get -y install xvfb libfontconfig1 && \
    npm install -g slimerjs && \
    npm install -g phantomjs && \
    npm install -g manet

CMD ["sh", "-c", "manet --security:basic:username $(echo $USER) --security:basic:password $(echo $PASSWORD)"]
