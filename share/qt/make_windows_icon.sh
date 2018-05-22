#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/AirBitcoin.ico

convert ../../src/qt/res/icons/AirBitcoin-16.png ../../src/qt/res/icons/AirBitcoin-32.png ../../src/qt/res/icons/AirBitcoin-48.png ${ICON_DST}
