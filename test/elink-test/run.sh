#!/bin/bash

set -e

SCRIPT=$(readlink -f "$0")
EXEPATH=$(dirname "$SCRIPT")


e-reset

cd $EXEPATH/bin; ./main.elf

#> dotproduct.log

retval=$?

if [ $retval -ne 0 ]
then
    echo "$SCRIPT FAILED"
else
    echo "$SCRIPT PASSED"
fi

exit $retval
