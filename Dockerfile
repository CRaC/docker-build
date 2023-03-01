FROM ubuntu:18.04

RUN \
        apt-get update && \
        apt-get -y --no-install-recommends install gnupg ca-certificates curl && \
        curl -s https://repos.azul.com/azul-repo.key | gpg --dearmor -o /usr/share/keyrings/azul.gpg && \
        echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list && \
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
		zulu17-jdk \
        && apt-get clean \
        && rm -rf /var/lib/apt /var/cache/apt
