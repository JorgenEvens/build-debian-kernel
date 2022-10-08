FROM debian:unstable

RUN apt-get -y update && \
        apt-get -y install build-essential flex bison \
            libelf-dev libncurses5-dev curl python3 \
            bc rsync kmod cpio libssl-dev:native \
            linux-image-amd64 pahole && \
        rm -rf /var/lib/apt/lists/*

COPY compile /compile
RUN chmod +x /compile

CMD /compile
