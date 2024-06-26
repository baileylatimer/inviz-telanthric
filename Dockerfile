FROM ruby:3.2.0
RUN apt-get update && apt-get install -y libreadline-dev
WORKDIR /usr/src/app
RUN gem install shopify-cli
VOLUME /usr/src/app
ENTRYPOINT ["shopify"]
