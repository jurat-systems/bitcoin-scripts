cd /satoshi
mkdir bin

cd bin
ln -s /satoshi/bitcoin/src/bitcoind bitcoind
ln -s /satoshi/bitcoin/src/bitcoin-cli bitcoin-cli
ln -s /satoshi/bitcoin/src/bitcoin-tx bitcoin-tx

cp /satoshi/bitcoin-scripts/*.sh /satoshi/bin
cp /satoshi/bitcoin-scripts/bitcoin.conf /satoshi
chmod +x *.sh
mkdir -p /satoshi/data/blocks


cd /satoshi
export private_ip=`hostname | sed -e 's/ip-//g' | sed -e 's/-/./g'`
sed -i "s/172.31.11.40/$private_ip/g" bitcoin.conf

cd /satoshi/bin

./run-bitcoin.sh
