FROM debian:bullseye-slim

RUN apt-get update \
	&& apt-get install -y build-essential git cmake

RUN rm -rf /tmp/* /var/tmp/* \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /opt

RUN git clone --recursive https://github.com/WebAssembly/wabt

WORKDIR /opt/wabt

RUN mkdir bin \
	&& cd bin \
	&& cmake .. \
	&& cmake --build .

ENV PATH=/opt/wabt/bin:$PATH

WORKDIR /src

COPY ./entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

CMD /bin/bash /tmp/entrypoint.sh
