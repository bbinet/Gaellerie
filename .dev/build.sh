#!/bin/bash

BASEDIR=$(cd $(dirname $0) && pwd)
LESSC=./submodules/less.js/bin/lessc

( cd "${BASEDIR}"
    $LESSC --compress ./swatchmaker.less > ../static/css/bootstrap.min.css
    ./submodules/UglifyJS/bin/uglifyjs ./submodules/galleria/src/galleria.js > ../static/js/galleria.js

    rsync -avz --cvs-exclude ./static/* ../static
    rsync -avz --cvs-exclude ./submodules/galleria/src/themes/* ../static/galleria-themes
)
