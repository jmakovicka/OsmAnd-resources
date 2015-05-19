#!/bin/sh
RESULT=`find . -name "*.xml" -exec xmllint --noout '{}' \; 2>&1`

if [ -n "$RESULT" ] ; then
    echo Error: $RESULT
    exit 1
fi
