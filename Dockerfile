FROM ruby:3.2.0

RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

ADD . /Rails-Docker
WORKDIR /Rails-Docker
RUN bundle install

EXPOSE 3000

CMD bundle exec rails s -b 0.0.0.0 -e docker
