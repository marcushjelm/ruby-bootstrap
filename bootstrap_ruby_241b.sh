#!/usr/bin/env bash
apt-get -y update
apt-get -y -m install build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev libxslt1-dev libxml2-dev libcurl4-openssl-dev libffi-dev libgdbm-dev libncurses5-dev
cd /tmp
wget http://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz
tar xzvf ruby-2.4.1.tar.gz
cd ruby-2.4.1/
./configure --prefix=/usr/local
make
make install
gem update --system
gem install bundler --no-ri --no-rdoc
ruby -v
