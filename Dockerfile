FROM mfrancis95/chocolate-doom-base

RUN git clone https://github.com/mfrancis95/crispy-multiplayer-doom

WORKDIR crispy-multiplayer-doom

RUN ./autogen.sh && make

EXPOSE 2342/udp

ENTRYPOINT src/crispy-doom -dedicated -privateserver