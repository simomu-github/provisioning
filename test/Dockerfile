FROM ubuntu:latest

RUN apt-get update -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata sudo git python3-apt \
    && rm -rf /var/apt/lists/*

RUN groupadd -g 1000 test \
    && useradd -g test -G sudo -m -s /bin/bash test

WORKDIR /home/test/provisioning
COPY . /home/test/provisioning

ENTRYPOINT ["test/entrypoint.sh"]
