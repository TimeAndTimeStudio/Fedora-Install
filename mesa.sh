#!/bin/bash

MESA_PREFIX="$HOME/mesa-install/usr"

export PATH="$MESA_PREFIX/bin:$PATH"

export LD_LIBRARY_PATH="$MESA_PREFIX/lib64:$MESA_PREFIX/lib:$LD_LIBRARY_PATH"

export LIBGL_DRIVERS_PATH="$MESA_PREFIX/lib64/dri"

export LIBVA_DRIVERS_PATH="$MESA_PREFIX/lib64/dri"

export VK_ICD_FILENAMES="$MESA_PREFIX/share/vulkan/icd.d/radeon_icd.x86_64.json"

export VDPAU_DRIVER_PATH="$MESA_PREFIX/lib64/vdpau"

export PKG_CONFIG_PATH="$MESA_PREFIX/lib64/pkgconfig:$MESA_PREFIX/share/pkgconfig:$PKG_CONFIG_PATH"

exec "$@"
