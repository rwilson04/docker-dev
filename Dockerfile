FROM shinymayhem/ssh

RUN \
	apt-get update && \
	apt-get install -y php5-cli && \
    rm -rf /var/lib/apt/lists/*

RUN \
	mkdir -p /opt/tutum && \
	git clone http://github.com/shinymayhem/tutum-api /tmp/tutum && \
	cp -R /tmp/tutum/. /opt/tutum && \
	rm -rf /tmp/tutum
