FROM apluslms/grading-base:debian-stretch-1.1

RUN apt-get install -qy \
  python3 \
  python3-pip
