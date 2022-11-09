library(tidyverse)
library(osmdata)
library(sf)
library(ggplot2)

gpe <- getbb("Ile de France")%>%
  opq()%>%
  add_osm_feature(key = "railway", 
                  value = c("subway")) %>%
  osmdata_sf()


metro_1 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 1")

metro_2 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 2")

metro_3 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 3")

metro_4 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 4")

metro_5 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 5")

metro_6 <- (gpe[["osm_lines"]]) %>% 
  filter(name %in% c("Métro 6", "Métro 6 - Viaduc de Passy", "Métro 6 Corvisart-Place D'Italie") )

metro_7 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 7")

metro_8 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 8")

metro_9 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 9")

metro_10 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 10")

metro_11 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 11")

metro_12 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 12")

metro_13 <- (gpe[["osm_lines"]]) %>% 
  filter(name %in% c("Métro 13","Ligne 13 du métro de Paris"))

metro_14 <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 14")

metro_3bis <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 3bis")

metro_7bis <- (gpe[["osm_lines"]]) %>% 
  filter(name == "Métro 7bis")

### colours ###

background_color<-'#282828'

metro1_color <- '#FBCF33'
metro2_color <- "#196CB8"
metro3_color <- '#9F971C'
metro4_color <- "#BE428D"
metro5_color <- '#F19043'
metro6_color <- "#84C38F"
metro7_color <- '#F2A4B7'
metro8_color <- "#CDACCF"
metro9_color <- '#D5C92A'
metro10_color <- "#E4B42D"
metro11_color <- '#8C5E24'
metro12_color <- "#397F4A"
metro13_color <- '#99D4DE'
metro14_color <- "#622A80"
metro3bis_color <- "#82C7E6"
metro7bis_color <- "#84C693"

font_color<-'#FFFFFF'

### map ###

paris_metro<-ggplot() +
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
  geom_sf(data = metro_3bis,
          inherit.aes = FALSE,
          color = metro3bis_color,
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
  geom_sf(data = metro_7bis,
          inherit.aes = FALSE,
          color = metro7bis_color,
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
  geom_sf(data = metro_13,
          inherit.aes = FALSE,
          color = metro13_color,
          size = .4,
          alpha = 1) +
  geom_sf(data = metro_14,
          inherit.aes = FALSE,
          color = metro14_color,
          size = .4,
          alpha = 1) +
  theme_void() +
  theme(
    plot.background = element_rect(fill = background_color))

<<<<<<< HEAD
=======

>>>>>>> 7c762aa4272aa319818594cf3e15444f4a5a597f
ggsave("paris_metro.jpeg", width=5000, height=5000, units="px")
