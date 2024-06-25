#!/usr/bin/env bash
set -xeo pipefail

source /etc/tinybox-release

# build a venv to be copied to the image
python3 -m venv build/venv
source build/venv/bin/activate

# upgrade pip
pip install --upgrade pip

# install deps
pip install numpy numba pillow pyserial psutil evdev redfish

if [[ "$TINYBOX_COLOR" == "green" ]]; then
  pip install nvidia-ml-py
fi

# exit venv
deactivate