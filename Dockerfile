FROM ubuntu:24.04

LABEL maintainer = "ayorur <aysenuryorur0@gmail.com>"

ENV DEBIAN_FRONTEND=nointeractive

RUN apt-get update \
 && apt-get install -y \
    build-essential \
    gcc-riscv64-linux-gnu \
    gdb-multiarch \
    libc6-riscv64-cross \
    qemu-system-misc \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && ln -s /usr/riscv64-linux-gnu/lib/ld-linux-riscv64.so.1 /lib/ld-linux-riscv-lp64d.so.1 \
 && ln -s /usr/riscv64-linux-gnu/lib/libc.so.6 /lib/libc.so.6 \
 && echo "add-auto-load-safe-path /xv6-riscv" > /home/ubuntu/.gdbinit

USER ubuntu

WORKDIR /xv6-riscv
