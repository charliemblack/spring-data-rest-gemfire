#!/bin/bash

if [ $# -lt 1 ]
then
        echo "Usage : $0 server_number"
        exit
fi

source `dirname $0`/env.sh

mkdir $TEST_CASE_HOME/data/server$1 > /dev/null  2>&1

rm -f $TEST_CASE_HOME/data/server$1/.cacheserver.ser  > /dev/null  2>&1

options="--J=-XX:+UseParNewGC"
options="$options --J=-XX:+UseConcMarkSweepGC"
options="$options --J=-XX:CMSInitiatingOccupancyFraction=50"
options="$options --J=-XX:+AggressiveOpts"


#options="$options -Djava.util.logging.config.file=$TEST_CASE_HOME/resources/logging.properties"

pushd  $TEST_CASE_HOME/data/server$1 > /dev/null 2>&1

gfsh start server --name=server$1 --max-heap=1g --initial-heap=1g --mcast-port=0 --cache-xml-file=$TEST_CASE_HOME/resources/cache.xml --dir=$TEST_CASE_HOME/data/server$1 --locators=localhost[55221]

popd > /dev/null 2>&1
