#!/bin/bash

set -e
cd "$(dirname "$0")"

VERSION=30.2
EPOCH=1

TARBALL="emacs-${VERSION}.tar.xz"
ORIG="emacs_${VERSION}.orig.tar.xz"

wget -nc https://ftp.gnu.org/gnu/emacs/${TARBALL}
cp ${TARBALL} ${ORIG}

tar xf ${TARBALL}

cd emacs-${VERSION}
sudo apt build-dep ./
debuild -us -uc -b
