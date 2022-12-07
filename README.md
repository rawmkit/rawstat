dwmblocks - modular status bar
==============================
dwmblocks is a tiny utility for generating a status bar for dwm or
similar programs.  There is an ability to generate status bar to
stdout, that may be useful for dvtm(1) ans similar programs.

This dwmblocks distribution is a fork of torrinfail's dwmblocks as of
commit a933ce0 (Thu Jan 6 2022).  The source code have been adapted to
compile on DragonFlyBSD.  Added man page.  See git log for complete
differences.

The original sources can be downloaded from:

  1.
    git clone https://github.com/torrinfail/dwmblocks
    git checkout a933ce0

  2. https://github.com/torrinfail/dwmblocks/archive/a933ce0/dwmblocks-a933ce0.zip


Dependencies
------------
Build time:
- c99 compiler
- podchecker(1pm) and pod2man(1pm) from perl distribution
- libX11 (optional, `-DNO_X`)


Install
-------
The shell commands `make; make install` should build and install this
package.  See `config.mk` file for configuration parameters.


License and Copyright
---------------------
dwmblocks is licensed through ISC License.
See LICENSE file for copyright and license details.


<!-- vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file. -->
