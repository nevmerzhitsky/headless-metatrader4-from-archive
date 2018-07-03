FROM nevmerzhitsky/headless-metatrader4:latest
LABEL maintainer="sergey.nevmerzhitsky@gmail.com"

ARG MT4_ARCH_NAME=mt4.tar.bz2

ADD $MT4_ARCH_NAME $MT4DIR

USER root
RUN chown $USER:$USER -R $MT4DIR
USER $USER

VOLUME $MT4DIR/logs
VOLUME $MT4DIR/MQL4/Logs
