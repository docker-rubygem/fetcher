FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.5

RUN gem install fetcher --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fetch"]
CMD ["--help"]
