---------------------
-- weatherobserved

-- "environment_weatherobserved" Table Definition ------------------------------------

DROP TABLE IF EXISTS environment_weatherobserved CASCADE;

CREATE TABLE IF NOT EXISTS environment_weatherobserved (
    -- -----------------------------
    -- TODO: fill missing attributes
    -- ...
    timeinstant TIMESTAMP WITH TIME ZONE NOT NULL,
    location GEOMETRY,
    address TEXT,
    source TEXT,
    dataprovider TEXT,
    name TEXT,
    battery DOUBLE PRECISION,
    weathertype TEXT,
    visibility TEXT,
    mantainer TEXT,
    mantaineremail TEXT,
    status TEXT,
    datenosignaldetected TIMESTAMP WITH TIME ZONE,
    datecalculatedstatus TIMESTAMP WITH TIME ZONE,
    atmosphericpressure DOUBLE PRECISION,
    maxatmosphericpressurethreshold DOUBLE PRECISION,
    minamosphericpressurethreshold DOUBLE PRECISION,
    precipitation DOUBLE PRECISION,
    relativehumidity DOUBLE PRECISION,
    maxrelativehumiditythreshold DOUBLE PRECISION,
    minrelativehumiditythreshold DOUBLE PRECISION,
    temperature DOUBLE PRECISION,
    maxtemperaturethreshold DOUBLE PRECISION,
    mintemperaturethreshold DOUBLE PRECISION,
    estimatedtemperature DOUBLE PRECISION,
    winddirection DOUBLE PRECISION,
    winddirectioncompass TEXT,
    compassmagic TEXT,
    dailyevapotranspiration DOUBLE PRECISION,
    windspeed DOUBLE PRECISION,
    maxwindspeedthreshold DOUBLE PRECISION,
    minwindspeedthreshold DOUBLE PRECISION,
    uv DOUBLE PRECISION,
    maxuvthreshold DOUBLE PRECISION,
    minuvthreshold DOUBLE PRECISION,
    solarradiation DOUBLE PRECISION,
    maxsolarradiationthreshold DOUBLE PRECISION,
    minsolarradiationthreshold DOUBLE PRECISION,
    absolutehumidity DOUBLE PRECISION,
    maxabsolutehumiditythreshold DOUBLE PRECISION,
    minabsolutehumiditythreshold DOUBLE PRECISION,
    solarazimuthangle DOUBLE PRECISION,
    dewpoint DOUBLE PRECISION,
    maxdewpointthreshold DOUBLE PRECISION,
    mindewpointthreshold DOUBLE PRECISION,
    illuminance DOUBLE PRECISION,
    corrosion DOUBLE PRECISION,
    corrosionindex DOUBLE PRECISION,
    solarelevationangle DOUBLE PRECISION,
    dailyprecipitation DOUBLE PRECISION,
    dailyprecipitationintensity DOUBLE PRECISION,
    dailyprecipitationduration DOUBLE PRECISION,
    feellikestemperature DOUBLE PRECISION,
    streamgauge DOUBLE PRECISION,
    maxstreamgaugethreshold DOUBLE PRECISION,
    minstreamgaugethreshold DOUBLE PRECISION,
    refpointofinterest TEXT,
    refpointofinterestpath TEXT,
    refpointofinteresttype TEXT,
    zip TEXT,
    zone TEXT,
    district TEXT,
    province TEXT,
    region TEXT,
    community TEXT,
    country TEXT,
    streetaddress TEXT,
    postalcode TEXT,
    addresslocality TEXT,
    addressregion TEXT,
    addresscommunity TEXT,
    addresscountry TEXT,
    -- -----------------------------
    -- COMMON ENTITY ATTRIBUTES
    entityid character varying(64) NOT NULL,
    entitytype text,
    municipality text NOT NULL DEFAULT 'NA',
    -- PRIMARY KEYS
    -- Si se agrega como primary Key entity ID nunca se podran guardar todos los datos
    -- Porque dará error por intentar insertar un valor duplicado.
    -- CONSTRAINT environment_weatherobserved_pk PRIMARY KEY (timeinstant, entityid)
    CONSTRAINT environment_weatherobserved_pk PRIMARY KEY (timeinstant)
);

CREATE INDEX IF NOT EXISTS environment_weatherobserved_gm_idx ON environment_weatherobserved USING gist ("location");
CREATE INDEX IF NOT EXISTS environment_weatherobserved_tm_idx ON environment_weatherobserved (entityid, timeinstant DESC);
