FROM ubuntu:16.04


RUN \
        apt-get update && \
        apt-get -y --no-install-recommends install apt-transport-https ca-certificates gnupg2 curl && \
        apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 && \
        curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-3_all.deb && \
        apt-get install ./zulu-repo_1.0.0-3_all.deb && \
        rm ./zulu-repo_1.0.0-3_all.deb && \
        apt-get install -y software-properties-common && \
        add-apt-repository ppa:ubuntu-toolchain-r/test && \
        apt-get update && \
        DEBIAN_FRONTEND=noninteractive \
        apt-get -y --no-install-recommends install \
		ant \
		asciidoc \
		autoconf \
		bash \
		build-essential \
		curl \
		file \
		gawk \
		g++-7 \
		gdb \
		git \
		jq \
		libaio-dev \
		libasound2-dev \
		libc6-dev \
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
		zulu23-jdk \
		zulu21-jdk \
		zulu17-jdk \
        && apt-get clean \
        && rm -rf /var/lib/apt /var/cache/apt
