FROM alpine:latest AS release
RUN apk add --no-cache git

ARG GIT_REVISION
ARG GIT_REPO_URL

WORKDIR /root/

RUN set -ex \
  && git clone $GIT_REPO_URL release -b $GIT_REVISION --depth 1

FROM ruby:2.7.7

COPY --from=release /root/release /usr/src/app
COPY docker-entrypoint.sh /usr/local/bin

RUN apt-get update \
  && apt-get install -y --no-install-recommends locales \
  && apt-get install -y vim \
  && rm -rf /var/lib/apt/lists/* \
  && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
  && locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

# timezone env with default
ENV TZ=Europe/Stockholm

WORKDIR /usr/src/app

RUN bundle install

EXPOSE 3000

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
