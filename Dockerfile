FROM apluslms/grading-base:2.0

RUN apt-get update -qqy && DEBIAN_FRONTEND=noninteractive apt-get install -qqy --no-install-recommends \
    -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    python3 \
    python3-pip \
    python3-setuptools \
 && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN pip3 --no-cache-dir --disable-pip-version-check install \
    git+https://github.com/Aalto-LeTech/python-grader-utils.git \
  && find /usr/local/lib/python* -type d -regex '.*/locale/[a-z_A-Z]+' -not -regex '.*/\(en\|fi\|sv\)' -print0 | xargs -0 rm -rf \
  && find /usr/local/lib/python* -type d -name 'tests' -print0 | xargs -0 rm -rf \
