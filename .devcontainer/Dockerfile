ARG VARIANT="3.15"
ARG RUBY_VERSION="3.1.2"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-${VARIANT} AS ruby-build

USER root
RUN apk add --no-cache bzip2 ca-certificates coreutils g++ gcc libc-dev patch tar xz make gmp-dev libffi-dev procps yaml-dev zlib-dev libxml2-dev openssl openssl-dev

USER vscode
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
RUN echo ". $HOME/.asdf/asdf.sh" >> $HOME/.bashrc
RUN echo "export RUBY_VERSION=$RUBY_VERSION" >> $HOME/.bashrc

SHELL ["/bin/bash", "-c"]
RUN . $HOME/.asdf/asdf.sh && asdf plugin add ruby && asdf install ruby 3.1.2


FROM ruby-build as dev-container
USER root
RUN apk add --no-cache sqlite-dev
USER vscode


