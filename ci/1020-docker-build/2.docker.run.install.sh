#!/usr/bin/env bash
set -x

export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

docker pull rockylinux:8

docker run -i -v ./:/code -w /code rockylinux:8 /code/files/install.sh
