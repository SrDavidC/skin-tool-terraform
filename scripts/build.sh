#!/bin/bash

# Create temp folder if not exists
if [ ! -d "temp" ]; then
    mkdir temp
fi
# cd into it
cd temp

# Clone stp
git clone https://github.com/InfinityZ25/skin-tool-python
# cd into the repo and build
cd skin-tool-python
# Run install script
./scripts/build-container.sh

#Go back to temp folder and clone sti
cd ..
git clone https://github.com/InfinityZ25/skin-tool-ipfs
# cd into the repo and build
cd skin-tool-ipfs
# Run install script
./scripts/build-container.sh

# Go to images folder and docker compose up
cd ../images
docker-compose up -d
