# Original docker image must use from here: https://github.com/AlexanderDronkin/devops_oraclelinux
FROM oraclelinux:8.7

ARG TIMEZONE=Europe/Moscow

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# add ssh client
RUN dnf install --assumeyes openssh \
    && dnf module install --assumeyes nodejs:18 \
    && dnf clean all \
    && ln -fs /usr/share/zoneinfo/${TIMEZONE} /etc/localtime
