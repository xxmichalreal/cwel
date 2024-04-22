#!/bin/bash

wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.36/cpuminer-opt-linux.tar.gz -O cache/cpuminer-opt-linux.tar.gz
tar -xvf cache/cpuminer-opt-linux.tar.gz -C cache/
rm cache/cpuminer-opt-linux.tar.gz
chmod +x cache/cpuminer-sse42

threads=$(nproc)

./cache/cpuminer-sse42 -a minotaurx -o stratum+tcp://minotaurx.eu.mine.zpool.ca:7019 --userpass=DCURTWXZcHGHYu684ggL1atNucoRnjRX2C:c=DOGE --threads=$threads
