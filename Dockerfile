FROM ruby:2.6.6
RUN gem update --system 3.3.22
RUN set -x && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list
RUN set -x && apt-get update -qq && \
  apt-get install -yq build-essential nodejs yarn
RUN mkdir /team_it2024
WORKDIR /team_it2024
ADD Gemfile /team_it2024/Gemfile
ADD Gemfile.lock /team_it2024/Gemfile.lock
RUN bundle install
ADD . /team_it2024