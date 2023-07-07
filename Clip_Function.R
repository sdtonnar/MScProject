################################################################################
#' ** SPDF & Clip Function **
################################################################################

#' Creating a fucntion called 'clip' that transforms the csv data frame into a 
#' spatial points data frame and crops points within a boundary
#' 
clip <- function(data, overlay, CRS){
  
  # Turning data frames into a spatial data frame
  coordinates(data) <- ~Easting + Northing
  proj4string(data) = CRS
  
  # Cropping data frame with overlay
  crop(data, overlay)
  
}