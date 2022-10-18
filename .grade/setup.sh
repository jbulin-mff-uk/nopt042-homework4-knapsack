#!/bin/sh
rm -rf .tmp
mkdir .tmp
wget -q -O .tmp/picat.tar.gz http://picat-lang.org/download/picat328_linux64.tar.gz
tar -xf .tmp/picat.tar.gz -C .tmp

