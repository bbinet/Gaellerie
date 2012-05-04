#!/bin/bash

BASEDIR=$(cd $(dirname $0) && pwd)
LESSC=./submodules/less.js/bin/lessc

( cd "${BASEDIR}"
    $LESSC --compress ./swatchmaker.less > ../static/css/bootstrap.min.css

    # rsync -avz --cvs-exclude  --delete \
    #     --exclude="_build" \
    #     --exclude=".*" \
    #     --exclude="docs" \
    #     --exclude="tests" \
    #     --exclude="less.js" \
    #     . _build/
)
