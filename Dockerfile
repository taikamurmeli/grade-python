ARG BASE_TAG=latest
FROM apluslms/grading-base:$BASE_TAG

COPY sbin /usr/local/sbin
COPY etc_apt /etc/apt

ARG GRADER_UTILS_VER=2.10.1

RUN apt_install -t testing \
    python3 \
    python3-pip \
    python3-setuptools \
 && ln -s /usr/bin/python3 /usr/local/bin/python \
 && ln -s /usr/bin/pip3 /usr/local/bin/pip \
\
 && pip_install \
    https://github.com/Aalto-LeTech/python-grader-utils/archive/v$GRADER_UTILS_VER.tar.gz \
 && find /usr/local/lib/python* -type d -regex '.*/locale/[a-z_A-Z]+' -not -regex '.*/\(en\|fi\|sv\)' -print0 | xargs -0 rm -rf \
 && find /usr/local/lib/python* -type d -name 'tests' -print0 | xargs -0 rm -rf

COPY bin /usr/local/bin
