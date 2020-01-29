FROM continuumio/miniconda3:latest

SHELL ["/bin/bash", "-c"]

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN conda config --set always_yes yes --set changeps1 no

ENTRYPOINT ["/entrypoint.sh"]
