FROM jupyter/scipy-notebook

MAINTAINER David Naughton <naughton@umn.edu>

RUN mkdir -p "/home/${NB_USER}/Desktop/swc-python" && \
    cd "/home/${NB_USER}/Desktop/swc-python" && \
    wget https://swcarpentry.github.io/python-novice-inflammation/data/python-novice-inflammation-data.zip && \
    unzip python-novice-inflammation-data.zip && \
    wget https://swcarpentry.github.io/python-novice-inflammation/code/python-novice-inflammation-code.zip && \
    unzip python-novice-inflammation-code.zip && \
    chmod -R g+rw "/home/${NB_USER}/Desktop"
