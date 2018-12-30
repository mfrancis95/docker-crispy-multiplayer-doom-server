FROM mfrancis95/chocolate-doom-build

RUN git clone --depth 1 https://github.com/mfrancis95/crispy-multiplayer-doom && \
    cd crispy-multiplayer-doom && ./autogen.sh && make

FROM mfrancis95/chocolate-doom-base

COPY --from=0 /crispy-multiplayer-doom/src/crispy-doom /usr/local/bin/chocolate-doom