
cd /satoshi

mkdir -p /satoshi/bin

cp /satoshi/bitcoin-scripts/*.sh /satoshi/bin

cd /satoshi/bin
ln -s /satoshi/bitcoin/src/bitcoind bitcoind
ln -s /satoshi/bitcoin/src/bitcoin-cli bitcoin-cli
ln -s /satoshi/bitcoin/src/bitcoin-tx bitcoin-tx 

cp /satoshi/bitcoin-scripts/bitcoin.conf /satoshi

current_host_ip=`hostname | sed 's/ip-*//g' | sed 's/-/./g'`

sed -i "s/172.31.11.40/$current_host_ip/g' bitcoin.conf

mkdir -p /satoshi/data/blocks

sudo ./run-bitcoin.sh
