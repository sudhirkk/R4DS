
#-----------------------------------------------------------
#        Sand box code using ggplot methods
#-----------------------------------------------------------

#
# Load tidyverse librarry
#
library(tidyverse)

#
# Peek at the dataset
#
mpg

#
# Plot data displ vs. hwy with categorizing class with different colors
#
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#
# Plot mpg data displ vs hwy with categorizing class with different shapes
#
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class, color = manufacturer))

#
# Plot with a smooth trend plot with a confidence interval
#
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

#
# Plot scatter plot with a fit line and confidence interval.
# Pretty good to see the data points as well as the general pattern
#
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class, color = manufacturer))

#
# Really cool visualization. The patterns and scatter plots on hyper drive!
#
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv, color = drv)) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class, color = manufacturer))

#
# This will give the documentation on te data
#
?mpg

#
# Facets split the plot into subplots to give better visualization.
# The following plot gives three vertical subplots w.r.t. drv variable.
#
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ drv)

#
# This facet plot gives the same as above but the plots are horizontal.
#
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

#
# The example below shows all the things together. Subplots, scatter plots,
# Smooth plots and all in different colors.
#
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "orange") + 
  facet_wrap(~ class, nrow = 2)

#
# argument 'se' to geom_smooth shows / hides confidence interval
# Adding jitter makes sure that the adjacent points are not
# plotted on the same point. Jitter adds random noise.
#
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class), position = "jitter") +
  geom_smooth(se = TRUE)

#
# Bar chart of diamonds with clarity used for filling the chart
#
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))



ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) + 
  geom_bar(alpha = 1/5, position = "identity")

ggplot(data = diamonds, mapping = aes(x = cut, colour = clarity)) + 
  geom_bar(fill = NA, position = "identity")


ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) + 
  geom_bar(alpha = 1/2, position = "dodge")


#
# Find the size (dimension) of a dataset
#
dim(diamonds)


ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_point(position = "jitter") +
  geom_smooth()

nz <- map_data("nz")

#
# This plot shows the abline but doesn't make much sense in this context.
#
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_point(position = "jitter") +
  geom_abline()

#
# The Grammer of graphics:
# A plot, a stat, set of aesthetics, etc are stacked together.
#


