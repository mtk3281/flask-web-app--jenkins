FROM jenkins/agent:alpine-jdk11

USER root

RUN apk add --no-cache python3 py3-pip python3-dev git \
RUN apk add --no-cache python3 py3-pip python3-dev \
    && python3 -m venv /venv \
    && . /venv/bin/activate \
    && pip install --upgrade pip \
    && pip install Flask

ENV PATH="/venv/bin:$PATH"

USER jenkins
