#!/usr/bin/env bash

set -euf

export DEBFULLNAME="Joseph Benden"
export DEBEMAIL="joe@benden.us"

cat > /tmp/para.$$ <<-EOF
para['desc'] = 'Webserver Benchmarking Tool'
para['desc_long'] = '''\
 A lightweight and simple benchmarking tool.
'''
EOF

trap "rm -f /tmp/para.$$" EXIT

debmake -t -z x -p weighttp -u 0.4 -o /tmp/para.$$

