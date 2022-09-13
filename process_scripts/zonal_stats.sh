#!/bin/sh

# Script to compute zonal statistics of a raster file cropped by an provided GeoJSON polygon.
# Usage: zonal_stats.sh input.geoson
# Returns: An GeoJSON to standard out with 'max', 'mean', 'min', 'stddev', 'valid percent'


CLI_INPUT="${1}"

# hide warnings see https://gis.stackexchange.com/a/358593
export CPL_LOG=/dev/null

IN_GEOTIFF=/process_scripts/in.tif

echo "${CLI_INPUT}" | gdalwarp -cutline /vsistdin/ -crop_to_cutline "${IN_GEOTIFF}" /vsistdout/ | gdalinfo -json -stats /vsistdin/
