FROM debian
WORKDIR /syno-base
RUN wget -O - https://sourceforge.net/projects/dsgpl/files/toolkit/DSM6.1/base_env-6.1.txz | tar -xJ

FROM scratch
COPY --from=0 /syno-base /
