FROM shinymayhem/ssh

RUN \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install -y build-essential npm php5-cli php5-curl && \
    rm -rf /var/lib/apt/lists/*

RUN \
	mkdir -p /opt/tutum && \
	git clone http://github.com/shinymayhem/tutum-api /tmp/tutum && \
	cp -R /tmp/tutum/. /opt/tutum && \
	rm -rf /tmp/tutum
