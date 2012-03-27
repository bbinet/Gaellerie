#!/bin/bash

BASEDIR=$(cd $(dirname $0) && pwd)
LESSC=$BASEDIR/less.js/bin/lessc

( cd $BASEDIR
    $LESSC ./swatchmaker.less > swatch/bootstrap.css
    $LESSC --compress  ./swatchmaker.less > swatch/bootstrap.min.css
)
