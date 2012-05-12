#!/bin/bash

BASEDIR=$(cd $(dirname $0) && pwd)
LESSC=./submodules/less.js/bin/lessc

( cd "${BASEDIR}"

    echo "> Concatenate and build less/css to ../static/css/all.min.css"
    $LESSC --compress ./swatchmaker.less > ../static/css/all.min.css

    echo "> Concatenate and build js to ../static/js/all.min.js"
    cat ./static/js/jquery-1.7.1.js \
        ./submodules/galleria/src/galleria.js \
        ./submodules/galleria/src/plugins/flickr/galleria.flickr.js | \
        ./submodules/UglifyJS/bin/uglifyjs > ../static/js/all.min.js

    echo "> Copy bootstrap/img/ files to ../static/img/"
    rsync -avz --cvs-exclude ./submodules/bootstrap/img/* ../static/img

    echo "> Copy galleria/src/themes files to ../static/galleria-themes/"
    rsync -avz --cvs-exclude ./submodules/galleria/src/themes/* ../static/galleria-themes
)
