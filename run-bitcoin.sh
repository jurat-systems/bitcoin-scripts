export JURAT_WITNESS_PUBKEYS=/satoshi/bitcoin/src/witness_pubkeys.json
nohup ./bitcoind -conf=/satoshi/bitcoin.conf > nohup.out 2>&1 &

