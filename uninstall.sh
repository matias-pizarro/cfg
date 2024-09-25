#!/bin/sh

rm -f /usr/local/bin/cfg
echo "deleted: /usr/local/bin/cfg"
rm -f /usr/local/etc/cfg.conf.sample
echo "deleted: /usr/local/etc/cfg.conf.sample"
rm -f /usr/local/share/man/man8/cfg.8.gz
echo "deleted: /usr/local/share/man/man8/cfg.8.gz"
if [ -f "/usr/local/etc/cfg.conf" ]; then
  echo "warning: /usr/local/etc/cfg.conf has been left untouched"
fi
if [ -f "/.gitignore" ]; then
  echo "warning: /.gitignore has been left untouched"
fi
echo ""
