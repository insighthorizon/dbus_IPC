#!/bin/sh

source  /home/marek/ea-bsp/toolchain/environment-setup-cortexa9hf-neon-poky-linux-gnueabi



$CC -Wall -c `pkg-config --cflags dbus-1` $< -o $@

$CC add-server.o -o add-server `pkg-config --libs dbus-1`

$CC add-client.o -o add-client `pkg-config --libs dbus-1`





