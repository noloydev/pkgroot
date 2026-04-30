#!/bin/bash

set -e
cd "$(dirname "$0")"

URL="https://discord.com/api/download?platform=linux&format=deb"
DEB="discord.deb"

wget -nc "${URL}" -O "${DEB}"
