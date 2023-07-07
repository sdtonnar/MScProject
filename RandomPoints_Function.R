################################################################################
#' ** Random Points Loop **
################################################################################

rand_pts <- function(data, boundary, x){
  
  # making the track for lions
  track <- amt::make_track(data, .x=Easting, .y=Northing, .t=timestamp)
  
  nn <- nrow(track)*x
  
  # Creating an object called random.lion.pts
  R <- random_points(boundary, nn, type = "random")
  
  # Creating a presence column, where 'false' in the case_ column, presence = '0'
  R$Presence <- with(R, ifelse(case_ == 'FALSE', '0', '1'))
  
  # Dropping 'case_' column as we no longer need it (we have presence column)
  drop <- c("case_")
  R <- R[,!(names(R)%in%drop)] # x10
  
  # Changing the structure of random pt data frames from track to data frame
  R <- as.data.frame(R)
  
  # Sourcing the RDT function to create a random time stamp within the start and end dates above
  R$timestamp <- RDT(st, et, R)
  
  # Renaming columns 'x_' and 'y_' to 'Easting' and 'Northing'
  R <- rename(R, Easting = x_, Northing = y_)
  
  # Reordering columns so 'presence' comes first
  R <- R[,c("Presence", "Easting", "Northing", "timestamp")]
  
}


