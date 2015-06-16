FROM ruby:2.1.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
RUN bundle config build.tiny_tds -- --with-freetds-include=/app/vendor/freetds/include/ --with-freetds-lib=/app/vendor/freetds/lib/

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY Gemfile /usr/src/app/
ONBUILD COPY Gemfile.lock /usr/src/app/
ONBUILD RUN bundle install

ONBUILD COPY . /usr/src/app

RUN apt-get update && apt-get install -y freetds-dev nodejs postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

EXPOSE 5000
CMD ["foreman", "start"]