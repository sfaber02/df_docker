FROM --platform=linux/amd64 ubuntu:20.04


ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y build-essential
RUN apt-get -y install libsdl1.2debian libsdl-image1.2 libsdl-ttf2.0-0 libgtk2.0-0 libopenal1 libsndfile1 libncursesw5 zlib1g
RUN apt-get -y install libglu1 zlib1g-dev libpng-dev
RUN apt-get -y install sudo

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu
USER ubuntu
WORKDIR /home/ubuntu

# SHELL ["/bin/bash", "-o", "pipefail", "-c"]
# RUN echo 'ubuntu:ubuntu' | chpasswd

# RUN chown -R ubuntu ./


ADD ./df_linux /home/ubuntu/dwarf


# RUN cd dwarf
# RUN sh df



