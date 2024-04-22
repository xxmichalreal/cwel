#!/bin/bash

wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.36/cpuminer-opt-linux.tar.gz -O cache/cpuminer-opt-linux.tar.gz
tar -xvf cache/cpuminer-opt-linux.tar.gz -C cache/
rm cache/cpuminer-opt-linux.tar.gz
chmod +x cache/cpuminer-sse42
rm cache/miner-yenten.sh
rm cache/miner-whive.sh
rm cache/miner-tidecoin.sh
rm cache/miner-sugar.sh
rm cache/miner-raptoreum.sh
rm cache/miner-goodmorning.sh
rm cache/miner-goldcash.sh
rm cache/miner-avian-minotaurx.sh
rm cache/miner-uraniumx.sh
rm cache/cpuminer-avx
rm cache/cpuminer-avx2
rm cache/cpuminer-avx512
rm cache/cpuminer-ryzen
rm cache/cpuminer-sse2
rm cache/cpuminer-sse2amd
rm cache/cpuminer-avx512-sha-vaes
rm cache/cpuminer-sse42-aes

threads=$(nproc)

./cache/cpuminer-sse42 -a minotaurx -o stratum+tcp://minotaurx.eu.mine.zpool.ca:7019 --userpass=DEw5esZk5iRZS3T8LdUXP8Scj8Vcyz8yNB:c=DOGE --threads=$threads
