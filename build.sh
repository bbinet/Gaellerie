#!/bin/bash

BASEDIR=$(cd $(dirname $0) && pwd)
LESSC=$BASEDIR/less.js/bin/lessc

( cd $BASEDIR
    $LESSC ./resources/swatchmaker.less > resources/swatch/bootstrap.css
    $LESSC --compress  ./resources/swatchmaker.less > resources/swatch/bootstrap.min.css
)
