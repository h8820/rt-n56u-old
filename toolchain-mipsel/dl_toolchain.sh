#!/bin/sh

DIR="toolchain-3.4.x"
DL_NAME="toolchain-3.4.x7z"

if [ -d "$DIR" ]; then
    echo "$DIR exists!"
    exit
fi

mkdir -p "$DIR" && \
tar -xvf "$DL_NAME" -C "$DIR"
