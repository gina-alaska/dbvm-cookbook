default['dbvm']['home'] = '/opt'
default['dbvm']['user'] = 'processing'

default['dbvm']['download_cache'] = 'download_cache'
default['dbvm']['source'] = 'dbvm_v1.1.tar.gz'


# DBVM environment configuration file
# Base processing
default['dbvm']['DBVM_LEVEL1'] = "YES"			# MODIS Level 1B products
default['dbvm']['DBVM_ATMOS'] = "YES"				# MODIS Atmosphere products

# Optional processing 
default['dbvm']['DBVM_DEM'] = "NO"				# MODIS Geolocation terrain correction
default['dbvm']['DBVM_IMAGE'] = "NO"				# MODIS GeoTIFF and JPEG image products
default['dbvm']['DBVM_DBGE'] = "NO"				# MODIS Google Earth image products
default['dbvm']['DBVM_LAND'] = "NO"				# MODIS Land products (requires DBVM_DEM=YES)
default['dbvm']['DBVM_MOD09'] = "NO"				# MODIS Land Surface Reflectance products (requires DBVM_LAND=YES)
default['dbvm']['DBVM_OCEAN'] = "NO"				# MODIS Ocean products
default['dbvm']['DBVM_AIRS'] = "NO"				# AIRS products (Aqua only)
default['dbvm']['DBVM_AMSRE'] = "NO"				# AMSR-E products (Aqua only)
default['dbvm']['DBVM_USER'] = "NO"				# User-defined products

# Directory names
default['dbvm']['ERROR_DIR'] = "$DBVM_HOME/errors"
default['dbvm']['LOG_DIR'] = "$DBVM_HOME/logs"
default['dbvm']['DATA_DIR'] = "$DBVM_HOME/data"
default['dbvm']['IMAGE_DIR'] = "$DATA_DIR/images"
default['dbvm']['L0_DIR'] = "$DATA_DIR/level0"
default['dbvm']['L1_DIR'] = "$DATA_DIR/level1"
default['dbvm']['L2_DIR'] = "$DATA_DIR/level2"
default['dbvm']['WORK_DIR'] = "$DATA_DIR/work"

# Data ingest options
default['dbvm']['DBVM_LOCAL_DATA'] = "NO"
default['dbvm']['DBVM_LOCAL_DIR'] = "/data"
default['dbvm']['DBVM_LOCAL_INTERVAL'] = "60"
default['dbvm']['DBVM_FTP_DATA'] = "NO"
default['dbvm']['DBVM_FTP_DIR'] = "ftp://ftp.ssec.wisc.edu/pub/eosdb/pds"
default['dbvm']['DBVM_FTP_INTERVAL'] = "300"

# Data retention time (days)
default['dbvm']['DBVM_RETAIN'] = "3"

# Data archive options
default['dbvm']['DBVM_ARCHIVE'] = "NO"
default['dbvm']['DBVM_ARCHIVE_DIR'] = "/archive"
default['dbvm']['DBVM_HDF_COMPRESS'] = "YES"

# Locations for leapsec.dat and utcpole.dat
default['dbvm']['DBVM_LEAPSEC'] = "http://oceandata.sci.gsfc.nasa.gov/Ancillary/LUTs/modis/leapsec.dat"
default['dbvm']['DBVM_UTCPOLE'] = "http://oceandata.sci.gsfc.nasa.gov/Ancillary/LUTs/modis/utcpole.dat"
