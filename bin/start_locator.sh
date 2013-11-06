#!/bin/bash


source `dirname $0`/env.sh

echo $TEST_CASE_HOME
mkdir -p $TEST_CASE_HOME/data/locator > /dev/null 2>&1
mkdir -p $TEST_CASE_HOME/bin/logs > /dev/null 2>&1

pushd  $TEST_CASE_HOME/bin/logs  > /dev/null 2>&1

gfsh start locator --name=locator1 --initial-heap=128m --max-heap=128m --dir=$TEST_CASE_HOME/data/locator --mcast-port=0 --port=55221 --J=-Dgemfire.jmx-manager-http-port=9090 --J=-Dgemfire.jmx-manager-port=2099

popd  > /dev/null 2>&1
