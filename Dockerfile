FROM ubuntu:latest
RUN useradd --create-home appuser
WORKDIR /home/appuser
USER appuser
RUN echo "echo hello world" >> ./hello_world.sh
RUN chmod 700 ./hello_world.sh
CMD ./hello_world.sh
