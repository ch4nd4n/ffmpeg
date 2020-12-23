FROM alpine:3.7

WORKDIR /app

RUN apk add --update git 
# build-essential gcc make yasm autoconf automake cmake libtool checkinstall wget software-properties-common pkg-config libmp3lame-dev libunwind-dev zlib1g-dev
RUN git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
WORKDIR /app/ffmpeg

RUN apk add --update --no-cache \
    build-base \
    coreutils \
    freetype-dev \
    gcc \
    lame-dev \
    libogg-dev \
    libass \
    libass-dev \
    libvpx-dev \
    libvorbis-dev \
    libwebp-dev \
    libtheora-dev \
    opus-dev \
    pkgconf \
    pkgconfig \
    rtmpdump-dev \
    wget \
    x264-dev \
    x265-dev \
    yasm

RUN ./configure
RUN make
RUN make install
WORKDIR /app
RUN rm -rf ./ffmpeg

CMD ["/bin/bash"]
