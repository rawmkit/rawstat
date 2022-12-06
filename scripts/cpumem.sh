#!/bin/sh
# Display CPU/Memory load.
# See COPYING and COPYRIGHT files for corresponding information.

mem=$(free -m | awk 'NR == 2 { print int($3*100/$2) }')
cpu=$(awk '/cpu /{ print int(($2+$4)*100/($2+$4+$5)) }' /proc/stat)
echo c${cpu}m${mem}

# vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
# End of file.
