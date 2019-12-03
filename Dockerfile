FROM ubuntu:latest as intermediate
RUN useradd --create-home user1
WORKDIR /home/user1
USER user1
RUN echo "echo hello worldzz" >> ./hello_world.sh
RUN chmod 700 ./hello_world.sh

FROM ubuntu:latest

RUN useradd --create-home user2
WORKDIR /home/user2
COPY --from=intermediate /home/user1/hello_world.sh hello_world.sh
RUN chown user2 hello_world.sh

USER user2
CMD ./hello_world.sh
