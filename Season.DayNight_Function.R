################################################################################
#' ** Season and DayNight Function **
################################################################################

# Season Function
seasonFN <- function(data){
  
  with(data, ifelse(month %in% c("09", "10", "11"), "Spring",
                    ifelse(month %in% c("12", "01", "02"), "Summer",
                           ifelse(month %in% c("03", "04", "05"), "Autumn",
                                  ifelse(month %in% c("06", "07", "08"), "Winter", NA)))))
}


# Subsetting by season and using time of day to create categorical variable 'Day/Night'

timecatFN <- function(data){
  
  # Subsetting Spring
  spring <- subset(data, Season == "Spring")
  # Creating a DayNight column using Spring sunrise / sunset times
  spring$DayNight <- with(spring, ifelse(TOD > "0545" & TOD < "1830", "Day", "Night"))
  
  # Subsetting Summer
  summer <- subset(data, Season == "Summer")
  # Creating a DayNight column using summer sunrise / sunset times
  summer$DayNight <- with(summer, ifelse(TOD > "0530" & TOD < "1915", "Day", "Night"))
  
  # Subsetting Autumn
  autumn <- subset(data, Season == "Autumn")
  # Creating a DayNight column using autumn sunrise / sunset times
  autumn$DayNight <- with(autumn, ifelse(TOD > "0630" & TOD < "1800", "Day", "Night"))
  
  # Subsetting Winter
  winter <- subset(data, Season == "Winter")
  # Creating a DayNight column using winter sunrise / sunset times
  winter$DayNight <- with(winter, ifelse(TOD > "0700" & TOD < "1730", "Day", "Night"))
  
  # Binding seasonal subsets back together
  rbind(spring, summer, autumn, winter)
  
}



