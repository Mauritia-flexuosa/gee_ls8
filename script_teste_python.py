# https://pythonrepo.com/repo/loicdtx-landsat-extract-gee-python-geolocation

# 1. Carrega pacotes do Python para usar o comando no terminal no script_2
# 2. Extrai série temporal do Landsat 8 de um ponto
# Marcio Baldissera Cure - 04-02-2022

from geextract import ts_extract
from datetime import datetime

# Example: Extract a Landsat 8 time-series for a 500m radius circular buffer.
# Local: Chácara do Tchelo in Silveira Martins municipality, RS.
lon = -53.5143600
lat = -29.6310332
LC8_dict_list = ts_extract(lon=lon, lat=lat, sensor='LC8',
                           start=datetime(1999, 1, 1), radius=500)
print(LC8_dict_list)
