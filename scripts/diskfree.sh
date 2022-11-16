#!/bin/sh
# This file is a part of dwmblocks.
# See COPYING and COPYRIGHT files for corresponding information.

df -h | awk '/\/boot|root|pkgmk|raid/ {
  if ($1 == "pkgmk") {
    printf "%s%s ", $1, $4;
  } else if ($1 == "/dev/mapper/raid") {
    printf "raid%s ", $4;
  } else {
    printf "%s%s ", $6, $4;
  }
}' | sed 's/ *$//g'

# vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
# End of file.
