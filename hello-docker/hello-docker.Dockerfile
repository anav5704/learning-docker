FROM ubuntu

LABEL maintainer="Anav Chand <anavkki@gmail.com>"

USER root

COPY /hello-docker.bash /

RUN apt -y update && apt -y install bash

RUN chmod 775 /hello-docker.bash

USER nobody

ENTRYPOINT ["/hello-docker.bash"]