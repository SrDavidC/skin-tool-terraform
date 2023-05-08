#!/bin/bash
cd temp
# Clone stp

# cd into st python and build it
cd skin-tool-python
# Run install script
./scripts/build-container.sh

# cd into the repo and build
cd ../skin-tool-ipfs
# build container
./scripts/build-container.sh

# Go to images folder and docker compose up
cd ../../images
docker compose down && docker compose up -d

