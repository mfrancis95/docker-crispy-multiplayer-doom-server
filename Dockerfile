FROM mfrancis95/chocolate-doom-build

RUN git clone https://github.com/mfrancis95/crispy-multiplayer-doom

WORKDIR crispy-multiplayer-doom

RUN ./autogen.sh && make install

FROM mfrancis95/chocolate-doom-base

COPY --from=0 /usr/local/bin/crispy-doom /usr/local/bin/crispy-doom

ENTRYPOINT crispy-doom -dedicated -privateserver