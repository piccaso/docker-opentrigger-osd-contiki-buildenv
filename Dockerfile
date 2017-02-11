FROM buildpack-deps:jessie

RUN \
	apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y avr-libc binutils-avr gcc-avr gdb-avr simulavr avrdude make git screen && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
