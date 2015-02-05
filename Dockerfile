#FROM shinymayhem/apache-dev
FROM shinymayhem/ssh

RUN \
	apt-get update && \
	apt-get install -y php5-cli

ENV LOCAL_USER username
ENV AUTHORIZED_KEYS blank
