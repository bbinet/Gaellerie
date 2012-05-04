#!/bin/bash

BASEDIR=$(cd $(dirname $0) && pwd)
LESSC=./less.js/bin/lessc

( cd "${BASEDIR}"
    $LESSC ./resources/swatchmaker.less > resources/swatch/bootstrap.css
    $LESSC --compress ./resources/swatchmaker.less > resources/swatch/bootstrap.min.css

    rsync -avz --cvs-exclude  --delete \
        --exclude="_build" \
        --exclude=".*" \
        --exclude="docs" \
        --exclude="tests" \
        --exclude="less.js" \
        . _build/
)
