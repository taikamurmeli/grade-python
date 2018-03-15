FROM apluslms/grading-base:debian-stretch-1.1

RUN apt-get update -qqy && DEBIAN_FRONTEND=noninteractive apt-get install -qqy --no-install-recommends \
    -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    python3 \
    python3-pip \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
