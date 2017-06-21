FROM apluslms/grading-base:debian-stretch

RUN apt-get install -qy \
  python3 \
  python3-pip
