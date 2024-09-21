#!/bin/sh

/usr/bin/install -v -m 0755 ./bin/* /usr/local/bin
mkdir -p /usr/local/share/cfg
/usr/bin/install -v -m 0644 ./cfg.conf.sample /usr/local/share/cfg/cfg.conf.sample
if [ ! -f /usr/local/etc/cfg.conf ]; then
  cp -p /usr/local/share/cfg/cfg.conf.sample /usr/local/etc/cfg.conf
  echo "install: ./cfg.conf.sample -> /usr/local/etc/cfg.conf"
fi
/usr/bin/install -v -m 0644 ./box.gitignore.sample /usr/local/share/cfg
if [ ! -f /.gitignore ]; then
  cp -p /usr/local/share/cfg/box.gitignore.sample /.gitignore
  echo "install: ./box.gitignore.sample -> /.gitignore"
fi
gzip --to-stdout ./cfg.8 | dd of=/usr/local/share/man/man8/cfg.8.gz 1> /dev/null    2> /dev/null
echo "install: ./cfg.8 -> /usr/local/share/man/man8/cfg.8.gz"
echo ""
