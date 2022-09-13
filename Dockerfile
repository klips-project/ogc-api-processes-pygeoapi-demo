FROM geopython/pygeoapi:0.12.0

RUN apt -y update && \
    apt -y upgrade && \
    apt -y install gdal-bin

COPY config.yml /pygeoapi/local.config.yml
COPY processes/hello_world.py /pygeoapi/pygeoapi/process/hello_world.py
COPY process_scripts/ /process_scripts/
