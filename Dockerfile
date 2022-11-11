FROM --platform=linux/amd64 ubuntu:focal

RUN apt-get update && apt-get install -y yasm gcc make

ADD . .

RUN make clean && ./configure --disable-programs --enable-shared --prefix=./build && make && make install
