FROM ruby:buster
RUN apt-get update && apt-get install -y zip
COPY .bundle Gemfile Gemfile.lock /opt/details/
WORKDIR /opt/details
RUN bundle install --path vendor/bundle
COPY details.rb /opt/details/
RUN zip -r ./details.zip ./
