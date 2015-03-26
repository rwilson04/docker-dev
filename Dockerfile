FROM shinymayhem/ssh

RUN \
	apt-get update && \
	apt-get install -y php5-cli && \
	apt-get install -y php5-curl && \
	apt-get install -y build-essential && \
	apt-get install -y npm && \
    rm -rf /var/lib/apt/lists/*

RUN \
	mkdir -p /opt/tutum && \
	git clone http://github.com/shinymayhem/tutum-api /tmp/tutum && \
	cp -R /tmp/tutum/. /opt/tutum && \
	rm -rf /tmp/tutum
