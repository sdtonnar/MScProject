################################################################################
################################################################################
#' ** Organising Shapefiles **
################################################################################
################################################################################

# Loading in shapefiles
boundary <- readOGR("Shapefiles/boundary_new.shp", GDAL1_integer64_policy = T)
roads <- readOGR("Shapefiles/cliproad.shp", GDAL1_integer64_policy = T)
habitat <- readOGR("Shapefiles/habitat.shp", GDAL1_integer64_policy = T)
waterholes <- readOGR("Shapefiles/Waterholes_New.shp", GDAL1_integer64_policy = T)

# Defining our CRS into the object 'proj4string'
projection <- CRS("+proj=utm +zone=35 +south +datum=WGS84 +units=m +no_defs")

# Checking the CRS and transforming any that are different
roads@proj4string
habitat@proj4string
waterholes@proj4string
boundary@proj4string # CRS isn't the same
# Transforming CRS
proj4string(boundary) = projection

# Creating a buffer around the boundary
boundary <- gBuffer(boundary, byid=TRUE, width = 20)