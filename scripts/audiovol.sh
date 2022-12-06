#!/bin/sh
# Display audio volume.
# See COPYING and COPYRIGHT files for corresponding information.

[ -x /usr/bin/amixer ] || exit 1

if amixer get Master | grep -q off; then
  #printf "%b" "\ufa80"
  echo "-1"
else
  #printf "%b %i" "\ufa7d" \
  echo \
    "$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*\)%\].*/\1/')"
fi

# vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
# End of file.
