#!/bin/bash

export MAGICK_HOME="/gitdown/ImageMagick-6.8.8"
export PATH="$MAGICK_HOME/bin:$PATH"

export PERLLIB=$PATH

exec "$@"
