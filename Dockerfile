FROM ubuntu:14.04

RUN \
        apt-get update && \
        apt-get -y --no-install-recommends install gnupg2 && \
        apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 && \
        echo "deb http://repos.azulsystems.com/ubuntu stable main" >> /etc/apt/sources.list.d/zulu.list && \
        apt-get update && \
        DEBIAN_FRONTEND=noninteractive \
        apt-get -y --no-install-recommends install \
		ant \
		asciidoc \
		autoconf \
		bash \
		build-essential \
		ca-certificates \
		curl \
		file \
		gawk \
		gcc-multilib \
		gdb \
		git \
		jq \
		libaio-dev \
		libasound2-dev \
		libc6-dev-i386 \
		libcap-dev \
		libcups2-dev \
		libfontconfig1-dev \
		libnet-dev \
		libnl-3-dev \
		libprotobuf-c0-dev \
		libprotobuf-dev \
		libx11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev libxrandr-dev \
		maven \
		mercurial \
		pkg-config \
		protobuf-c-compiler \
		protobuf-compiler \
		python-ipaddr \
		python-protobuf \
		sudo \
		unzip \
		util-linux \
		zip \
		zulu-13 \
		zulu-8 \
        && apt-get clean \
        && rm -rf /var/lib/apt /var/cache/apt
