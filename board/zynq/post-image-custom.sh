#!/bin/sh

FIRST_DT="system-top"
[ -z "${FIRST_DT}" ] || ln -fs "${FIRST_DT}.dtb" "${BINARIES_DIR}/devicetree.dtb"

# Copy the FPGA image to the output folder
cp "board/zynq/generated/system.bit.bin" "${BINARIES_DIR}/system.bit.bin"

support/scripts/genimage.sh -c board/zynq/genimage.cfg
