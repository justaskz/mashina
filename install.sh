#!/usr/bin/env bash

mkdir -p /opt/mashina
git clone https://github.com/justaskz/mashina.git /opt/mashina
cd /opt/mashina
make install
