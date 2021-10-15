FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update
RUN apt-get install -y wget ffmpeg
RUN apt-get install -y python python3
RUN apt-get install -y python3-pip
RUN pip3 install numpy
RUN pip3 install spotdl
RUN wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl
