#!/usr/bin/env bash
set -e

arch-chroot /mnt systemctl mask rpcbind.socket rpcbind.service sshd.service sshd.socket cupsd.socket cupsd.service avahi-daemon.service avahi-daemon.socket rsyncd.socket rsyncd.service
arch-chroot /mnt systemctl enable --now ufw.service apparmor.service



