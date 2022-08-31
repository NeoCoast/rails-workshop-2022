FROM ruby:3.1.2

RUN apt-get update && apt-get install -y npm && npm install -g yarn

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

RUN bundle config build.nokogiri --use-system-libraries

COPY . ./

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
