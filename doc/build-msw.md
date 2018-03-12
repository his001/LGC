Copyright (c) 2009-2012 Bitcoin Developers
Distributed under the MIT/X11 software license, see the accompanying
file license.txt or http://www.opensource.org/licenses/mit-license.php.
This product includes software developed by the OpenSSL Project for use in
the OpenSSL Toolkit (http://www.openssl.org/).  This product includes
cryptographic software written by Eric Young (eay@cryptsoft.com) and UPnP
software written by Thomas Bernard.


See readme-qt.rst for instructions on building LGC QT, the
graphical user interface.

WINDOWS BUILD NOTES
===================

Compilers Supported
-------------------
TODO: What works?
Note: releases are cross-compiled using mingw running on Linux.


Dependencies
------------
Libraries you need to download separately and build:

                default path               download
OpenSSL         \openssl-1.0.1p-mgw        http://www.openssl.org/source/
Berkeley DB     \db-4.8.30.NC-mgw          http://www.oracle.com/technology/software/products/berkeley-db/index.html
Boost           \boost-1.59.0-mgw          http://www.boost.org/users/download/
miniupnpc       \miniupnpc-1.9-mgw         http://miniupnp.tuxfamily.org/files/
Secp256k1       \secp256k1                 included in src folder

Their licenses:
OpenSSL        Old BSD license with the problematic advertising requirement
Berkeley DB    New BSD license with additional requirement that linked software must be free open source
Boost          MIT-like license
miniupnpc      New (3-clause) BSD license
Secp256k1

Versions used in this release:
OpenSSL      1.0.1p
Berkeley DB  4.8.30.NC
Boost        1.58.0
miniupnpc    1.9
Secp256k1    include in src folder


OpenSSL
-------
MSYS LGC:
un-tar sources with MSYS 'tar xfz' to avoid issue with symlinks (OpenSSL ticket 2377)
change 'MAKE' env. variable from 'C:\MinGW32\bin\mingw32-make.exe' to '/c/MinGW32/bin/mingw32-make.exe'

cd /c/deps/openssl-1.0.1p
./config
make

Berkeley DB
-----------
MSYS LGC:

    cd /c/deps/db-4.8.30.NC/build_unix
    sh ../dist/configure --enable-mingw --enable-cxx
    make

Boost
-----
DOS prompt:

    downloaded boost jam 3.1.18
    cd \deps\coindeps32\boost-1.57.0
    bjam toolset=gcc --build-type=complete stage

Secp256k1
-----------
MSYS LGC:

./autogen.sh
./configure
make
make install

MiniUPnPc
---------
UPnP support is optional, make with USE_UPNP= to disable it.

MSYS LGC:

    cd /c/miniupnpc-1.6
    make -f Makefile.mingw
    mkdir miniupnpc
    cp *.h miniupnpc/

Build LGCd
-------
DOS prompt:

    cd \LGC\src
    mingw32-make -f makefile.mingw
    strip LGCd.exe
