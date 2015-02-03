#FROM shinymayhem/apache-dev
FROM shinymayhem/ssh

ENV LOCAL_USER="username"
ENV AUTHORIZED_KEYS=""

RUN \
	useradd -m ${LOCAL_USER} && \
	usermod -a -G admin ${LOCAL_USER}

CMD run.sh
