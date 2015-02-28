FROM shinymayhem/ssh

RUN \
	apt-get update && \
	apt-get install -y php5-cli && \
    rm -rf /var/lib/apt/lists/*

