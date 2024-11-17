FROM ubuntu

LABEL maintainer="Anav Chand <anavkki@gmail.com>"

USER root

COPY ./web-server.bash /

RUN apt -y update && apt -y install bash netcat-openbsd

USER nobody

ENTRYPOINT [ "/web-server.bash" ]