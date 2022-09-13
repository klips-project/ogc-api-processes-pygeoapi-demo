# OGC API Processes Demo with pygeoapi

Demo of requesting zonal statistics of a raster cropped by an provided GeoJSON polygon.

## Setup

```shell
docker build -t pygeoapi-dev .

docker run -p 5000:80 pygeoapi-dev
```

## Request Process

```shell
curl 'http://localhost:5000/processes/hello-world/execution' \
  -X POST \
  -H 'content-type: application/json' \
  --data-raw '{"inputs":{"name":"Jakob","inputGeom":{"value":{"type":"Polygon","coordinates":[[[13.716966937810264,51.05853236584221],[13.706495593816124,51.05507963988478],[13.725893329411825,51.05356899131809],[13.716966937810264,51.05853236584221]]]},"mediaType":"application/geo+json"}}}'
```

Example output:

```json
{
    "STATISTICS_MAXIMUM": "285.76",
    "STATISTICS_MEAN": "283.62878787879",
    "STATISTICS_MINIMUM": "281.96",
    "STATISTICS_STDDEV": "0.66418442845691",
    "STATISTICS_VALID_PERCENT": "49.62"
}
```
