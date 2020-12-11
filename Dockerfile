FROM ubuntu:bionic
MAINTAINER Jaran Keowma <jaranb@gmail.com>
LABEL maintainer="Jaran Keowma <jaranb@gmail.com>"
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get install -q -y --no-install-recommends apt-utils \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get install -q -y --no-install-recommends \
        build-essential \
        fakeroot \
        autoconf \
        automake \
        quilt \
        devscripts \
        apt \
        dctrl-tools \
        dput \
        file \
        libdistro-info-perl \
        libdpkg-perl \
        libgit-wrapper-perl \
        liblist-compare-perl \
        liburi-perl \
        libwww-perl \
        lintian \
        man-db \
        patch \
        patchutils \
        python3-debian \
        python3-magic \
        sensible-utils \
        strace \
        unzip \
        wdiff \
        curl \
        wget \
        xz-utils \
        debian-keyring \
        equivs \
        liblwp-protocol-https-perl \
        libsoap-lite-perl \
        duck \
        faketime \
        dpkg-dev \
        debhelper \
        dh-make \
        libbz2-dev \
        zlib1g-dev \
        libssl-dev \
        libcurl4-openssl-dev \
        libevent-dev \
        libffi-dev \
        libglib2.0-dev \
        libjpeg-dev \
        libpng-dev \
        libncurses-dev \
        libreadline-dev \
        libsqlite3-dev \
        libmysqlclient-dev \
        libpq-dev \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        net-tools \
        usbutils \
        nano \
        less \
        ccache \
        eatmydata


ADD deb /tmp/deb
WORKDIR /tmp/deb
RUN dpkg -i  openscada-server_1+r2676-1_all.deb openscada_1+r2676-1_arm64.deb \
openscada-dbg_1+r2676-1_arm64.deb openscada-dev_1+r2676-1_arm64.deb \
openscada-libdb-main_1+r2676-1_all.deb \
openscada-libdb-vca_1+r2676-1_all.deb openscada-model-aglks_1+r2676-1_all.deb
RUN apt-get -y install -f
#COPY install.sh /
#CMD ["/install.sh"]

EXPOSE 10002 10004 10005
CMD ["/usr/bin/openscada_start", "--noX11"]

#How to build.
#docker bulid -t oscada-arm64v8:bionic .
