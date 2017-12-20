#!/usr/bin/env bash

REQUIRED_LINUX_DISTRO="Ubuntu"
ACTUAL_LINUX_DISTRO="$(lsb_release -i -s)"

REQUIRED_UBUNTU_VERSION="$(grep ubuntu_version roles/common/vars/main.yml | cut -d '"' -f 2)"
ACTUAL_UBUNTU_VERSION="$(lsb_release -r -s)"

# Check that we have the required Linux distribution
if [ "$REQUIRED_LINUX_DISTRO" != "$ACTUAL_LINUX_DISTRO" ]; then
    echo "Invalid Linux distribution, setup requires $REQUIRED_LINUX_DISTRO"
    exit 2
fi

# Check that we have the required version of Ubuntu
if [ "$REQUIRED_UBUNTU_VERSION" != "$ACTUAL_UBUNTU_VERSION" ]; then
    echo "Invalid Ubuntu version, setup requires $REQUIRED_UBUNTU_VERSION"
    exit 2
fi

ansible-playbook setup.yml -i HOSTS --ask-become-pass