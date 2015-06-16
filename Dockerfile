FROM ruby:2.1.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen              1
RUN bundle config --global path                vendor/bundle
RUN bundle config --global bin                 vendor/bundle/bin
RUN bundle config --global disable_shared_gems 1
RUN bundle config --global without             development:test
RUN bundle config --global dry_run             false
RUN bundle config --global jobs                4
# RUN bundle config --global build.tiny_tds --with-freetds-include=/app/vendor/freetds/include/ --with-freetds-lib=/app/vendor/freetds/lib/

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/

RUN apt-get update && apt-get install -y freetds-bin freetds-common freetds-dev nodejs postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN find / -name tsql
RUN echo $PATH
RUN echo $LD_LIBRARY_PATH

COPY . /usr/src/app
RUN bundle install

EXPOSE 5000
CMD ["foreman", "start"]