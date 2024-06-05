library(tidyverse)
library(sf)
library(here)
library(leaflet)
library(Polychrome)

# Portal metadata
app_title = "Monitoring the Ecological and Oceanographic Impacts of Floating Offshore Wind Developments in California"
app_description = "Note: best used on desktop. Interact with the long-term ocean monitoring programs that are critical to understanding the impacts of floating offshore wind developments in California. By selecting and deselecting Essential Ocean Variables and/or Monitoring Programs, you can identify gaps in baseline datasets, informing future monitoring needs and opportunities."
attribution_string = "Sources: Esri, spatial data sources available upon request"
provided_crs <- st_crs(4326)

#context_geometry_filename = "LeaseAreas_poly.kmz"

# Center coordinate of map
initial_long = -120.78
initial_lat = 35.56

# Read in project data
datasets <- read_csv(here("data", "dataset_rows.csv"))
variable_types <- read_csv(here("data", "variable_types.csv"))

# What variables are available to filter on?
variable_list <- variable_types$variable

# What organizations are available to filter on?
organization_list <- unique(datasets$organization)
colors = light.colors(length(organization_list))
pal = colorFactor(colors, domain = organization_list)




