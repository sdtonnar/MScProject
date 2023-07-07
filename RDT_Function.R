################################################################################
#' ** Random Day Time Function **
################################################################################

# Function to generate x number of random dates within a given start and end date
# and random time in the format HH:MM

RDT <- function(st, et, data){   
  lenDate <- dim(data)[1]    
  seqDays <- seq.POSIXt(as.POSIXct(st), as.POSIXct(et), by="mins")  
  aDay <- runif(lenDate, 1, length(seqDays))  
  Date <- seqDays[aDay]  
}
