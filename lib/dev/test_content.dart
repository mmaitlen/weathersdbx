const stationInfoKTIW = '''{
  "@context": [
    "https://geojson.org/geojson-ld/geojson-context.jsonld",
    {
      "@version": "1.1",
      "wx": "https://api.weather.gov/ontology#",
      "s": "https://schema.org/",
      "geo": "http://www.opengis.net/ont/geosparql#",
      "unit": "http://codes.wmo.int/common/unit/",
      "@vocab": "https://api.weather.gov/ontology#",
      "geometry": {
        "@id": "s:GeoCoordinates",
        "@type": "geo:wktLiteral"
      },
      "city": "s:addressLocality",
      "state": "s:addressRegion",
      "distance": {
        "@id": "s:Distance",
        "@type": "s:QuantitativeValue"
      },
      "bearing": {
        "@type": "s:QuantitativeValue"
      },
      "value": {
        "@id": "s:value"
      },
      "unitCode": {
        "@id": "s:unitCode",
        "@type": "@id"
      },
      "forecastOffice": {
        "@type": "@id"
      },
      "forecastGridData": {
        "@type": "@id"
      },
      "publicZone": {
        "@type": "@id"
      },
      "county": {
        "@type": "@id"
      }
    }
  ],
  "id": "https://api.weather.gov/stations/KTIW",
  "type": "Feature",
  "geometry": {
    "type": "Point",
    "coordinates": [
      -122.57611,
      47.2675
    ]
  },
  "properties": {
    "@id": "https://api.weather.gov/stations/KTIW",
    "@type": "wx:ObservationStation",
    "elevation": {
      "value": 96.012,
      "unitCode": "unit:m"
    },
    "stationIdentifier": "KTIW",
    "name": "Tacoma, Tacoma Narrows Airport",
    "timeZone": "America/Los_Angeles",
    "forecast": "https://api.weather.gov/zones/forecast/WAZ509",
    "county": "https://api.weather.gov/zones/county/WAC053",
    "fireWeatherZone": "https://api.weather.gov/zones/fire/WAZ654"
  }
}''';

const currentObservationKTIW =
    '''{
  "@context": [
    "https://geojson.org/geojson-ld/geojson-context.jsonld",
    {
      "@version": "1.1",
      "wx": "https://api.weather.gov/ontology#",
      "s": "https://schema.org/",
      "geo": "http://www.opengis.net/ont/geosparql#",
      "unit": "http://codes.wmo.int/common/unit/",
      "@vocab": "https://api.weather.gov/ontology#",
      "geometry": {
        "@id": "s:GeoCoordinates",
        "@type": "geo:wktLiteral"
      },
      "city": "s:addressLocality",
      "state": "s:addressRegion",
      "distance": {
        "@id": "s:Distance",
        "@type": "s:QuantitativeValue"
      },
      "bearing": {
        "@type": "s:QuantitativeValue"
      },
      "value": {
        "@id": "s:value"
      },
      "unitCode": {
        "@id": "s:unitCode",
        "@type": "@id"
      },
      "forecastOffice": {
        "@type": "@id"
      },
      "forecastGridData": {
        "@type": "@id"
      },
      "publicZone": {
        "@type": "@id"
      },
      "county": {
        "@type": "@id"
      }
    }
  ],
  "id": "https://api.weather.gov/stations/KTIW/observations/2021-09-18T13:53:00+00:00",
  "type": "Feature",
  "geometry": {
    "type": "Point",
    "coordinates": [
      -122.58,
      47.27
    ]
  },
  "properties": {
    "@id": "https://api.weather.gov/stations/KTIW/observations/2021-09-18T13:53:00+00:00",
    "@type": "wx:ObservationStation",
    "elevation": {
      "value": 89,
      "unitCode": "unit:m"
    },
    "station": "https://api.weather.gov/stations/KTIW",
    "timestamp": "2021-09-18T13:53:00+00:00",
    "rawMessage": "KTIW 181353Z AUTO 22007KT 10SM FEW011 BKN031 OVC050 12/12 A2970 RMK AO2 RAE53 SLP055 P0024 T01170117",
    "textDescription": "Cloudy",
    "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
    "presentWeather": [],
    "temperature": {
      "value": 11.7,
      "unitCode": "unit:degC",
      "qualityControl": "qc:V"
    },
    "dewpoint": {
      "value": 11.7,
      "unitCode": "unit:degC",
      "qualityControl": "qc:V"
    },
    "windDirection": {
      "value": 220,
      "unitCode": "unit:degree_(angle)",
      "qualityControl": "qc:V"
    },
    "windSpeed": {
      "value": 12.96,
      "unitCode": "unit:km_h-1",
      "qualityControl": "qc:V"
    },
    "windGust": {
      "value": null,
      "unitCode": "unit:km_h-1",
      "qualityControl": "qc:Z"
    },
    "barometricPressure": {
      "value": 100580,
      "unitCode": "unit:Pa",
      "qualityControl": "qc:V"
    },
    "seaLevelPressure": {
      "value": 100550,
      "unitCode": "unit:Pa",
      "qualityControl": "qc:V"
    },
    "visibility": {
      "value": 16090,
      "unitCode": "unit:m",
      "qualityControl": "qc:C"
    },
    "maxTemperatureLast24Hours": {
      "value": null,
      "unitCode": "unit:degC",
      "qualityControl": null
    },
    "minTemperatureLast24Hours": {
      "value": null,
      "unitCode": "unit:degC",
      "qualityControl": null
    },
    "precipitationLastHour": {
      "value": 0.0061,
      "unitCode": "unit:m",
      "qualityControl": "qc:C"
    },
    "precipitationLast3Hours": {
      "value": null,
      "unitCode": "unit:m",
      "qualityControl": "qc:Z"
    },
    "precipitationLast6Hours": {
      "value": null,
      "unitCode": "unit:m",
      "qualityControl": "qc:Z"
    },
    "relativeHumidity": {
      "value": 100,
      "unitCode": "unit:percent",
      "qualityControl": "qc:V"
    },
    "windChill": {
      "value": null,
      "unitCode": "unit:degC",
      "qualityControl": "qc:V"
    },
    "heatIndex": {
      "value": null,
      "unitCode": "unit:degC",
      "qualityControl": "qc:V"
    },
    "cloudLayers": [
      {
        "base": {
          "value": 340,
          "unitCode": "unit:m"
        },
        "amount": "FEW"
      },
      {
        "base": {
          "value": 940,
          "unitCode": "unit:m"
        },
        "amount": "BKN"
      },
      {
        "base": {
          "value": 1520,
          "unitCode": "unit:m"
        },
        "amount": "OVC"
      }
    ]
  }
}''';
