#!/bin/bash
mkdir swap
cd swap
dd if=/dev/zero of=sfile bs=4096 count=1000000
mkswap sfile
swapon sfile