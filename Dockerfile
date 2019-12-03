FROM ubuntu:latest
#RUN useradd --create-home appuser
#WORKDIR /home/appuser
#USER appuser
RUN echo "echo hello worldz" >> ./hello_world.sh
RUN chmod +x ./hello_world.sh
#RUN chmod 700 ./hello_world.sh
CMD ./hello_world.sh
