FROM ubuntu:16.04
MAINTAINER Jo M

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq -y update
RUN apt-get -y install --no-install-recommends texlive-full texlive-xetex
ADD . /src
WORKDIR /src
RUN mkdir _build
RUN xelatex --version
RUN xelatex -interaction=nonstopmode -halt-on-error -output-directory _build cheatsheet
