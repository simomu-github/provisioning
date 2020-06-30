FROM ubuntu

RUN apt-get update -y \
    && apt-get install -y sudo git

RUN groupadd -g 1000 test \
    && useradd -g test -G sudo -m -s /bin/bash test

WORKDIR /home/test/provisioning
COPY . /home/test/provisioning

ENTRYPOINT ["test/entrypoint.sh"]
