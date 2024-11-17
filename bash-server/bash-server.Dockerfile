FROM ubuntu

LABEL maintainer="Anav Chand <anavkki@gmail.com>"

USER root

COPY ./bash-server.bash /

RUN apt -y update && apt -y install bash

RUN chmod 755 /bash-server.bash

USER nobody

ENTRYPOINT ["/bash-server.bash"]