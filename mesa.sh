#!/bin/bash

MESA_PREFIX="$HOME/mesa-install/usr"
FFMPEG_PREFIX="$HOME/ffmpeg"

export PATH="$FFMPEG_PREFIX/bin:$MESA_PREFIX/bin:$PATH"

export LD_LIBRARY_PATH="$FFMPEG_PREFIX/lib:$MESA_PREFIX/lib64"

export LIBGL_DRIVERS_PATH="$MESA_PREFIX/lib64/dri"
export LIBVA_DRIVERS_PATH="$MESA_PREFIX/lib64/dri:/usr/lib64/dri:$LIBVA_DRIVERS_PATH"

# ให้ Vulkan หา AMD + Intel ICD เอง
export VK_DRIVER_FILES="$MESA_PREFIX/share/vulkan/icd.d"

export PKG_CONFIG_PATH="$FFMPEG_PREFIX/lib/pkgconfig:$MESA_PREFIX/lib64/pkgconfig"

exec "$@"
