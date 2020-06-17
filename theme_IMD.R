# This function customizes a theme for plotting with ggplot2.

theme_IMD <- function(){theme(panel.grid.major = element_blank(),
                              panel.grid.minor = element_blank(),
                              panel.background = element_rect(color = 'black', fill = 'white'),
                              strip.background = element_rect(color = 'black', fill ='grey'),
                              legend.key = element_blank(),
                              axis.text = element_text(size=12),
                              axis.title = element_text(size=12)
)}