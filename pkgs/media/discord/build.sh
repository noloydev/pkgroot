#!/bin/bash
set -e

URL="https://discord.com/api/download?platform=linux&format=deb"
DEB="discord.deb"

wget -nc "${URL}" -O "${DEB}"

reprepro -b ~/noloy-repo remove trixie discord
reprepro -b ~/noloy-repo includedeb trixie "${DEB}"

rm "${DEB}"
