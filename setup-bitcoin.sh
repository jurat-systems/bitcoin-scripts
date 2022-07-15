
cd /satoshi

mkdir bin

cp /satoshi/bitcoin-scripts/*.sh /satoshi/bin

ln -s /satoshi/bitcoin/src/bitcoind bitcoind
ln -s /satoshi/bitcoin/src/bitcoin-cli bitcoin-cli
ln -s /satoshi/bitcoin/src/bitcoin-tx bitcoin-tx 

