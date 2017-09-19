#!/bin/sh

DGL=/tmp/dse-graph-loader-5.1.3/graphloader
cd /tmp/dse-halfday-workshop/resources/graph

dse gremlin-console -e schema.groovy

${DGL} -graph fraud -address localhost fraud-mapping.groovy -inputpath data/
