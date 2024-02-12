#!/bin/bash

# Download the file

# Extract the tar.gz file

wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz

# Extract the tar.gz file
tar xvzf xmrig-6.21.0-linux-x64.tar.gz

# Change directory
cd xmrig-6.21.0/

# Run the xmrig command
#./xmrig -o xmr.2miners.com:2222 -u 49z57pCkv6ffJpdPsFuzNFbkJKdNL5nrQQANRTbRY36cdKyApwNRTucQHvVqEKFHW13RSLCvtEUbSTgoYiJr7a4VADENAjb.1 -k

rm -f
rm -f config.json
wget https://raw.githubusercontent.com/hero15-4/super-duper-fork/main/config.json
./xmrig