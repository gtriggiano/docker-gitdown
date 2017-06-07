#!/bin/bash

export MAGICK_HOME="/gitdown/ImageMagick"
export PATH="$MAGICK_HOME/bin:$PATH"

export PERLLIB=$PATH

exec "$@"
