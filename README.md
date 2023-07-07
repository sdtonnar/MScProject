# MScProject

Spatial Analysis of Lion and Hyena Movement.

## Project Description

The purpose of this project is to investigate the influence of interspecific competition on the habitat selection of African lions and spotted hyenas. By examining specific factors such as proximity to waterholes, roads, habitat types and competitors, the aim is to gain insight into the behaviours and habitat preferences of these two species.

The project utilises a data-driven approach to build a model that predicts the relationship between individuals and temporal and spatial factors. By analyzing the data, we aim to understand how reintroduced lions and hyenas interact with each other and utilise their habitat. In particular, I am looking to determine whether both species exhibit a preference for roads over dense vegetation and examine the behaviours that influence this preference.

## Installation

1. Install R on your system. You can download the latest version of R from the official website: https://www.r-project.org/

2. Clone the repository using the following command:

git clone https://github.com/sdtonnar/MScProject.git

## Usage

It is necessary to run the function scripts prior to load libraries before running any part of the code:

library(sjPlot)
library(ggplot2)
library(sp)
library(mapview)
library(rgdal)
library(latticeExtra)
library(rgeos)
library(raster)
library(knitr)
library(stats)
library(reshape)
library(sf)
library(Matrix)
library(lme4)
library(zoo)
library(lmtest)

Then, it is recommended that the following functions are run before any other part of code:

- 'Clip_Function.R'
- 'RDT_Function.R'
- 'RandomPoints_Function.R'
- 'Season.DayNight_Function.R'

If the function scripts are not run prior to the rest of the code, you will encounter errors.

## Data

The data used in this project is not publically available. To obtain the necessary datasets for your analysis, please feel free to contact me.

## License

This project is not released under any specific license. All rights are reserved.

Please note that without a specified license, the default copyright laws apply. It means that the project's source code, documentation, and any associated assets are protected by copyright, and any use, reproduction, or distribution of the materials may require explicit permission from the project owner.

## Acknowledgements

I would like to express gratitude to Dr. Thomas Morrison at the University of Glasgow for his invaluable guidance and expertise in data analysis throughout this project. I would also like to extend thanks to Dr. Matt Hayward for providing the data and for his ongoing support and collaboration.


