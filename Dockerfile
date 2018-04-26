FROM ruby:2.4.2-slim-stretch
RUN apt-get update -qq &&\
	apt-get install -y build-essential libpq-dev git-core postgresql-client &&\
	rm -rf /var/lib/apt/lists/* /var/cache/apt/*
RUN mkdir /quotes
WORKDIR /quotes

COPY Gemfile /quotes/
COPY Gemfile.lock /quotes/
RUN bundle install
