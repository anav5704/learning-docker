FROM ubuntu

LABEL maintainer="Anav Chand <anavkki@gmail.com>"

LABEL version="1.0.0"

LABEL description="This is a simple Dockerfile that prints Hello Docker!"

USER root

COPY /hello-docker.bash /

RUN apt -y update && apt -y install bash

RUN chmod 775 /hello-docker.bash

USER nobody

ENTRYPOINT ["/hello-docker.bash"]
