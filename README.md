ABOUT
-----
This directory contains _dwmblocks_, a tiny utility for generating a
status bar for _dwm_ or similar programs.  There is an ability to
generate status bar to _stdout_, that may be useful for **dvtm(1)**
and similar programs.

This _dwmblocks_ distribution is a fork of torrinfail's _dwmblocks_ as
of commit a933ce0 (Thu Jan 6 2022) with the following differences:
  * fixed compilation on DragonFlyBSD
  * added a man page
  * the source code has been adapted to suckless style

See git log for further differences.

The original sources can be downloaded from:
  1. https://github.com/torrinfail/dwmblocks
  2. https://github.com/torrinfail/dwmblocks/archive/a933ce0/dwmblocks-a933ce0.zip

REQUIREMENTS
------------
Build time:
  * c99 compiler
  * POSIX sh(1p), make(1p) and "mandatory utilities"
  * libX11 (optional)

INSTALL
-------
The shell commands `make && make install` should build and install
this package.  See _config.mk_ file for configuration parameters.

_dwmblocks_ can be customized by creating a custom _config.h_ file and
(re)compiling the source code.

LICENSE
-------
_dwmblocks_ is licensed through ISC License.
See _LICENSE_ file for copyright and license details.

<!-- vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file. -->
