#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/LGC.ico

convert ../../src/qt/res/icons/LGC-16.png ../../src/qt/res/icons/LGC-32.png ../../src/qt/res/icons/LGC-48.png ${ICON_DST}
