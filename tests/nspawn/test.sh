# Test for systemd-nspawn
# Copyright (C) 2008-2024 Red Hat Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

output="$(PATH=../..:$PATH virt-what --test-root=. 2>&1)"
expected="systemd_nspawn"

if [ "$output" != "$expected" ]; then
    echo "$0: test failed because output did not match expected"
    echo "Expected output was:"
    echo "----------------------------------------"
    echo "$expected"
    echo "----------------------------------------"
    echo "But the actual output of the program was:"
    echo "----------------------------------------"
    echo "$output"
    echo "----------------------------------------"
    exit 1
fi
