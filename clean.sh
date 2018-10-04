#!/bin/bash

KERNEL_SRC_DIR=/lib/modules/$(uname -r)/build

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
WIL6210_SRC_DIR=${SCRIPT_DIR}/wil6210

WIL6210_INSTALL_DIR=kernel/drivers/net/wireless/ath/wil6210

make -C ${KERNEL_SRC_DIR} M=${WIL6210_SRC_DIR} clean
