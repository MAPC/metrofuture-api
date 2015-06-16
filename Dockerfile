FROM rails:onbuild
RUN bundle config build.tiny_tds -- --with-freetds-include=/app/vendor/freetds/include/ --with-freetds-lib=/app/vendor/freetds/lib/
EXPOSE 5000