library(tidyverse)
library(osmdata)
library(sf)
library(ggplot2)

getbb("Comunidad de Madrid")


gpe <- getbb("Comunidad de Madrid")%>%
  opq()%>%
  add_osm_feature(key = "railway", 
                  value = c("subway")) %>%
  osmdata_sf()

metro_1 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 1")

metro_2 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 2")

metro_3 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 3")

metro_4 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 4 (Metro de Madrid)")

metro_5 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 5")

metro_6 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 6")

metro_7 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 7")

metro_8 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 8")

metro_9 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 9")

metro_10 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 10")

metro_11 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 11")

metro_12 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Línea 12")


### colours ###

background_color<-'#FAEBD7'

metro1_color <- '#389CD2'
metro2_color <- "#E6442E"
metro3_color <- '#F6DA32'
metro4_color <- "#532A0A"
metro5_color <- '#91BA19'
metro6_color <- "#717171"
metro7_color <- '#E8622E'
metro8_color <- "#E562AC"
metro9_color <- '#802C6B'
metro10_color <- "#1C2486"
metro11_color <- '#3E863D'
metro12_color <- "#AAA11F"

### map ###

madrid_dark<-ggplot() +
  geom_sf(data = metro_1,
          inherit.aes = FALSE,
          color = metro1_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_2,
          inherit.aes = FALSE,
          color = metro2_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_3,
          inherit.aes = FALSE,
          color = metro3_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_4,
          inherit.aes = FALSE,
          color = metro4_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_5,
          inherit.aes = FALSE,
          color = metro5_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_6,
          inherit.aes = FALSE,
          color = metro6_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_7,
          inherit.aes = FALSE,
          color = metro7_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_8,
          inherit.aes = FALSE,
          color = metro8_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_9,
          inherit.aes = FALSE,
          color = metro9_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_10,
          inherit.aes = FALSE,
          color = metro10_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_11,
          inherit.aes = FALSE,
          color = metro11_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_12,
          inherit.aes = FALSE,
          color = metro12_color,
          size = .4,
          alpha = 1) +
  
  theme_void() +
  theme(
    plot.background = element_rect(fill = background_color))

ggsave("madrid_metro.jpeg", width=5000, height=5000, units="px")
