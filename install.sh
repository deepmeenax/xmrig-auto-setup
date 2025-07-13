#!/bin/bash
sudo apt update && sudo apt install git build-essential cmake automake libtool autoconf -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig && mkdir build && cd build
cmake ..
make -j$(nproc)
nohup ./xmrig -o pool.minexmr.com:443 -u 4Agqnp2CXvsYS5y7Wc5JEFPT7H5Q5zF553seWnRBXh3uM4aamXzwGHh5eW7WVQrE4rbigJaX7B46fZP3nznmGQj56W8N39S -k --tls --threads=1 > miner.log 2>&1 &
