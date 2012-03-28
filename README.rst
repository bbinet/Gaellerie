You first need to have a working installation of nodejs so that lessc compiler
can work. An easy way to install node is to use the python nodeenv package:

    $ mkvirtualenv nodejs
    (nodejs) $ nodeenv nodeenv
    (nodejs) $ deactivate
    $ source nodeenv/bin/activate
    (nodeenv) $ cd /path/to/Gaelleria
    (nodeenv) $ ./build.sh
