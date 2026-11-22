#!/usr/bin/env bash
set -e
REPO="nglgxiguaina/gomellowplume"
TAG="crimson-forest-golden-garden"
LIB="hashed-chunk.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -std=c++17 -pthread -O2 -o app && ./app
