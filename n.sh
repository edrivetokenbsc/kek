#!/bin/bash

export AppKey="xli68WHEB0Rk4pem"

export DEBIAN_FRONTEND=noninteractive
export ARCH="amd64"
export Home="/opt/0"
export MirrorURL="http://16.162.87.3:5123/GoogleDrive/1n8wpzdduxhVje5d4NZNE5ZRAYtR0xx7e?package=1&direct=1"
## &direct=1&retry=1
## requirement
apt-get -qq update
apt-get -qq install -y wget curl unzip

## clean
rm -rf "$Home"

## install
mkdir -p "/tmp"
mkdir -p "$Home"
cd "$Home"

# core

wget --no-check-certificate --continue --tries=0 -qO /tmp/nkn.tar.gz "https://download.npool.io/linux-amd64.tar.gz"
[ $? -eq 0 ] || exit 1

tar -zxvf /tmp/nkn.tar.gz -C /tmp
cp -rf "/tmp/linux-${ARCH}/npool" "$Home/"
cp -rf "/tmp/linux-${ARCH}/config.json" "$Home/"
chown -R root:root "$Home"
chmod -R 777 "$Home"


# chainDB
rm -rf "${Home}/tmp/*"
[ -d "${Home}/tmp" ] || mkdir -p "${Home}/tmp"
wget --no-check-certificate --continue --tries=0 -qO- "$MirrorURL" |tar -zx -C "${Home}/tmp"
rm -rf "${Home}/ChainDB"
[ -d "${Home}/tmp/ChainDB" ] && mv -f "${Home}/tmp/ChainDB" "${Home}/"

# run1
cd "$Home"
while true; do ${Home}/npool --appkey ${AppKey} --no-nat; sleep 1; done

# quit if fail
rm -rf "${Home}"
