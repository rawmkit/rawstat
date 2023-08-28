OVERVIEW
--------
This directory contains dwmblocks, a tiny utility that generates a
status bar for dwm(1) or similar programs.  There is an ability to
generate status bar to stdout, that may be useful for dvtm(1),
screen(1) and similar programs.

This distribution is a fork of torrinfail's dwmblocks as of commit
a933ce0 (Thu Jan 6 2022) with the following differences:
- fix compilation on DragonFlyBSD
- add dwmblocks.1 man page
- suckless style build

See git log for complete/further differences.

The original sources can be downloaded from:
1. https://github.com/torrinfail/dwmblocks
2. https://github.com/torrinfail/dwmblocks/archive/a933ce0/dwmblocks-a933ce0.zip


REQUIREMENTS
------------
**Build time**:
- C99 compiler
- POSIX sh(1p), make(1p) and "mandatory utilities"
- libX11 (optional)


INSTALL
-------
The shell commands `make && make install` should build and install
this package.  See `config.mk` file for configuration parameters.


CUSTOMIZATION
-------------
dwmblocks can be customized by creating a custom `config.h` file and
(re)compiling the source code.


LICENSE
-------
dwmblocks is licensed through ISC License.
See LICENSE file for copyright and license details.
