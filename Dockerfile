FROM apluslms/grading-base:debian-stretch-1.1

RUN apt-get update -qqy && apt-get install -qqy --no-install-recommends \
    python3 \
    python3-pip \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
