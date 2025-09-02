#!/bin/bash

set -ouex pipefail

### Install packages

dnf -y install --setopt=install_weak_deps=False \
    cockpit-machines \
    cockpit-ostree \
    cockpit-sosreport \
    cockpit-files \

mkdir /tmp/cockpit-zfs-manager
git clone https://github.com/45drives/cockpit-zfs-manager.git /tmp/cockpit-zfs-manager
cp -r /tmp/cockpit-zfs-manager/zfs /usr/share/cockpit
