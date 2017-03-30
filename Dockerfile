FROM ruby:2.4
ADD . /code
WORKDIR /code
RUN gem install bundler
RUN bundle install
CMD bundle exec reel-rack -p 5000
