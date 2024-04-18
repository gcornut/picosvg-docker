#!/bin/bash
VERSION=0.22.1
wget "https://github.com/googlefonts/picosvg/archive/refs/tags/v${VERSION}.zip" -O picosvg.zip
unzip picosvg.zip
mv "picosvg-${VERSION}" picosvg
docker build --tag gcornut/picosvg:latest --tag gcornut/picosvg:${VERSION} .
