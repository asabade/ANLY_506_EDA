#LIBRARY IMPORT

library(tidyverse)

#DATA

mpg

#GGPLOT

ggplot(data = mpg) + 

  geom_point(mapping = aes(x = displ, y = hwy))

# COL CLASS

ggplot(data = mpg) + 

  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#SIZE

ggplot(data = mpg) + 

  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#COLOR

ggplot(data = mpg) + 

  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#PLOTS INTO FACETS

ggplot(data = mpg) + 

  geom_point(mapping = aes(x = displ, y = hwy)) + 

  facet_wrap(~ class, nrow = 2)

# DRAW LINE
ggplot(data = mpg) + 

  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

# POINT AND LINES

ggplot(data = mpg) + 

  geom_point(mapping = aes(x = displ, y = hwy)) +

  geom_smooth(mapping = aes(x = displ, y = hwy))

# DRAW BARS

ggplot(data = diamonds) + 

  geom_bar(mapping = aes(x = cut))

# BARS WITH COLOR

ggplot(data = diamonds) + 

  geom_bar(mapping = aes(x = cut, fill = cut))

# show statistical summary

ggplot(data = diamonds) + 

  stat_summary(

    mapping = aes(x = cut, y = depth),

    fun.ymin = min,

    fun.ymax = max,

    fun.y = median

  )
