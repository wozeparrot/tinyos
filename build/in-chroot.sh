#!/usr/bin/env bash
set -xeo pipefail

pushd /tmp

dpkg -i /opt/tinybox/build/deps/gum.deb

chmod -x /etc/update-motd.d/*

popd
