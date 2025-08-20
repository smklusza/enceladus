#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# dnf5 install -y tmux 

# environments
dnf5 install -y emacs
dnf5 install -y emacs-goodies
dnf5 install -y emacs-magit
dnf5 install -y emacs-lua
dnf5 install -y julia

# other wayland sessions
dnf5 install -y wayfire
dnf5 install -y wayfire-config-manager
dnf5 install -y wf-shell
dnf5 install -y wf-config

# GUIs
dnf5 install -y fuzzel

# Customization
dnf5 install -y numix-icon-theme-circle

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
