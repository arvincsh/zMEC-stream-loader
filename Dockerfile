FROM ubuntu:18.04

RUN mkdir /home/work
WORKDIR /home/work

RUN apt update -y && apt install -y sudo && apt install -y vim && apt install -y curl && apt install -y git && apt install -y ffmpeg

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

RUN git clone https://github.com/arvincsh/zMEC-stream-loader.git

CMD [ "ffmpeg", "-i", "http://140.113.179.8.xip.io/live/ipcam.flv", "test.mp4", "-y"]
