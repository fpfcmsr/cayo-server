#!/bin/bash

set -ouex pipefail

### Install packages

mkdir /tmp/cockpit-zfs-manager
git clone https://github.com/45drives/cockpit-zfs-manager.git /tmp/cockpit-zfs-manager
cp -r /tmp/cockpit-zfs-manager/zfs /usr/share/cockpit
