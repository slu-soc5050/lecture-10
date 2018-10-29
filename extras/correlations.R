# this script creates the positive and negative correlation graphics in the lecture slides

# dependencies - tidyverse
library(ggplot2)

# dependencies - install from github
library(prener) 

# positive correlation
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point(position = "jitter", size = 4) + 
  geom_smooth(method = "lm", color = "#ff0000", size = 2) +
  labs(
    title = "Positive Correlation",
    subtitle = "Data via the ggplot2 package",
    x = "City Fuel Efficiency (mpg)",
    y = "Highway Fuel Efficiency (mpg)"
  ) +
  cp_sequoiaTheme(background = "gray")

cp_plotSave(filename = "extras/images/positiveCorr.png", preset = "lg", dpi = 500)

# negative correlation
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(position = "jitter", size = 4) + 
  geom_smooth(method = "lm", color = "#ff0000", size = 2) +
  labs(
    title = "Negative Correlation",
    subtitle = "Data via the ggplot2 package",
    x = "Displacement (liters)",
    y = "Highway Fuel Efficiency (mpg)"
  ) +
  cp_sequoiaTheme(background = "gray")

cp_plotSave(filename = "extras/images/negativeCorr.png", preset = "lg", dpi = 500)
