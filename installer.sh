#!/bin/sh
# Author: Sandro Rüfenacht
# Date: 07.10.2021

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

cp arnim.sh /bin/arnim
cp zola.sh /bin/zola

if [ ! -d "/bin/arnim-files" ]; then
    mkdir /bin/arnim-files
fi

cp arnim-files/* /bin/arnim-files/

chmod +x /bin/arnim
chmod +x /bin/zola
chmod +x -R /bin/arnim-files