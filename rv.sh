#!/bin/bash -x
sudo apt-get install autotools-dev automake -y
./bootstrap
./configure CC=kcc CFLAGS=-fissue-report=`pwd`/report.json
make -j4
. ./run-1
. ./run-2
. ./run-3
. ./run-4
rv-html-report `pwd`/report.json -o report
rv-upload-report `pwd`/report