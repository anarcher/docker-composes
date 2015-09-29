FROM ruby:2

RUN gem install fakes3

VOLUME /data

EXPOSE 4567

CMD ["fakes3","-r","/data","-p","4567"]
