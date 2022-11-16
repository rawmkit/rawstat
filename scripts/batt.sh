#!/bin/sh
# This file is a part of dwmblocks.
# See COPYING and COPYRIGHT files for corresponding information.

BATT=/sys/class/power_supply/BAT0
[ -d $BATT ] || exit 1

CAP=$(cat $BATT/capacity)
STAT=$(cat $BATT/status)

case $STAT in
Charging)     echo "batt:C$CAP" ;;
Discharging)  echo "batt:D$CAP" ;;
*)            echo "batt:U$CAP" ;;
esac

# vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
# End of file.
