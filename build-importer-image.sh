#!/bin/bash

esbuild configBase.js --bundle --platform=node --target=node10.4 --outfile=config.js

docker build -t Dockerfile temp .
