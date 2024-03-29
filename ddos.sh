#!/bin/bash

#

# Script to kill UDP packets

#

# Usage:

# ./udp-kill.sh <ip>

#

# Example:

# ./udp-kill.sh 192.168.1.1

#

# Copyright (c) 2016 Greenbone Networks GmbH

#

# This program is free software; you can redistribute it and/or

# modify it under the terms of the GNU General Public License

# as published by the Free Software Foundation; either version 2

# of the License, or (at your option) any later version.

#

# This program is distributed in the hope that it will be useful,

# but WITHOUT ANY WARRANTY; without even the implied warranty of

# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the

# GNU General Public License for more details.

#

# You should have received a copy of the GNU General Public License

# along with this program; if not, write to the Free Software

# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

#



if [ $# -ne 1 ]; then

echo "Usage: ./udp-kill.sh <ip>"

exit 1

fi



ip=$1



echo "Killing UDP packets to $ip ..."

/sbin/iptables -A OUTPUT -p udp --dport $ip -j DROP



echo "Done."