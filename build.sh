#!/bin/bash

BASEDIR=$(cd $(dirname $0) && pwd)
LESSC=$BASEDIR/less.js/bin/lessc

(cd $BASEDIR/bootswatch/swatchmaker/ && ln -sf ../../bootstrap/ ./)

(cd $BASEDIR/bootswatch/swatchmaker/ && $LESSC ./swatchmaker.less > swatch/bootstrap.css)
(cd $BASEDIR/bootswatch/swatchmaker/ && $LESSC --compress  ./swatchmaker.less > swatch/bootstrap.min.css)
