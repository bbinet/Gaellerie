Gaellerie installation
----------------------

To install Gaellerie, do the following steps::

    $ git clone git://github.com/bbinet/Gaellerie.git
    $ cd Gaellerie
    $ git submodule update --init
    $ mkvirtualenv -a `pwd` Gaellerie
    (Gaellerie) $ cd .dev/submodules/blatter/
    (Gaellerie) $ python setup.py develop
    (Gaellerie) $ cd -
    (Gaellerie) $ blatter serve
    (Gaellerie) $ firefox http://localhost:8008/

To generate the static website in the `_out/` directory, just launch command::

    (Gaellerie) $ blatter blat

Development
-----------

To be able to build the css stylesheets base on twitter bootstrap and
bootswatch, you need to install a developement environment as explained below.

You first need to have a working installation of nodejs so that lessc compiler
can work. An easy way to install node is to use the python nodeenv package::

    $ mkvirtualenv nodejs
    (nodejs) $ pip install nodeenv
    (nodejs) $ nodeenv nodeenv
    (nodejs) $ deactivate
    $ source nodeenv/bin/activate
    (nodeenv) $ cd /path/to/Gaellerie/.dev
    (nodeenv) $ ./build.sh
