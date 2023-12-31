#!/bin/sh

#
# convert markdown to reveal.js via pandoc
#
# this script requires...
#     git, pandoc
#
# Usage...
#     $ markdown2reveal -o output.html input.md
#       (--variable theme="beige" --variable transition="linear" etc...)
#
# Also see this gist...
#     https://gist.github.com/aaronwolen/5017084#file-slides-md
#
# The MIT License
# Copyright (c) 2013 Rintaro Okamura
#


# if [ ! -f ./.reveal.js ]; then
#     git clone https://github.com/hakimel/reveal.js.git .reveal.js.tmp 2>&1 1>/dev/null
#     #mv ./.reveal.js.tmp/css    ./css/
#     #mv ./.reveal.js.tmp/js     ./js/
#     #mv ./.reveal.js.tmp/lib    ./lib/
#     #mv ./.reveal.js.tmp/plugin ./plugin/
#     rm -rf ./.reveal.js.tmp
#     touch  ./.reveal.js
# fi

[ ! -d ./.pandoc_tmp ] && git clone https://gist.github.com/5017084.git .pandoc_tmp

pandoc --section-divs -t html5 -s --template ./ga-template.html $@
