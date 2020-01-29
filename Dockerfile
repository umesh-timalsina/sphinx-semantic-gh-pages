FROM continuumio/miniconda3:4.7.12-alpine

SHELL ["/bin/bash", "-c"]

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN conda config --set always_yes yes --set changeps1 no

ENTRYPOINT ["/entrypoint.sh"]
