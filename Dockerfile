FROM ubuntu:14.04

WORKDIR /gitdown

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      build-essential \
      default-jre \
      git \
      wget \
    && rm -Rf /var/cache \
    && wget https://www.imagemagick.org/download/ImageMagick.tar.gz \
    && tar xzvf ImageMagick.tar.gz \
    && cd ImageMagick-7.0.3-10 && ./configure && make && make install && ldconfig /usr/local/lib && cd .. \
    && rm ImageMagick.tar.gz \
    && git clone https://github.com/zeromq/gitdown.git repository \
    && cp repository/bin/* /usr/local/bin

ADD entrypoint.sh /entrypoint
RUN chmod +x /entrypoint

WORKDIR /docs

ENTRYPOINT ["/entrypoint"]
