# Color palettes for I&M data
#
# Code borrowed from https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2
#

# TODO: This can probably be whittled down significantly.
# List of all colors
# L is light, blank is mid, D is dark
# this list contains text names and hex values for colors
im_colors <- c(
  `IMD RED L` = "#C78080",
  `IMD RED` = "#8F0000",
  `IMD RED D` = "#380000",
  `IMD DBROWN L` = "#BCA389",
  `IMD DBROWN` = "#784613",
  `IMD DBROWN D` = "#301C07",
  `IMD LBROWN L` = "#D3AA80",
  `IMD LBROWN` = "#A65400",
  `IMD LBROWN D` = "#422100",
  `IMD GOLD L` = "#D7CA80",
  `IMD GOLD` = "#AE9400",
  `IMD GOLD D` = "#453B00",
  `IMD GREEN L` = "#B6C097",
  `IMD GREEN` = "#6C8A2F",
  `IMD GREEN D` = "#2B3312",
  `IMD BLUE L` = "#B7E7FA",
  `IMD BLUE` = "#6ECEF4",
  `IMD BLUE D` = "#2C5261",
  `IMD WHITE L` = "#FFFFFF",
  `IMD WHITE` = "#DDDDDD",
  `IMD WHITE D` = "#BBBBBB",
  `IMD GRAY L` = "#D0D0D0",
  `IMD GRAY` = "#A1A1A1",
  `IMD GRAY D` = "#404040",
  `IMD BLACK L` = "#808080",
  `IMD BLACK` = "#222222",
  `IMD BLACK D` = "#000000",
  `NPS BLUE` = "#BAE5F9",
  `NPS ORANGE` = "#C56C39",
  `NPS BROWN` = "#6F4930",
  `NPS GREEN` = "#56903A",
  `NPS BROWN D` = "#213A1B",
  `DULL PINK` = "#6F5159",
  `WARM GRAY` = "#ACA9A2",
  `SPRING BLUE` = "#5585A9",
  `AQUA` = "#9BDEEF",
  `RICH BROWN` = "#385424",
  `EARTH GREEN` = "#2D782C",
  `PALE BROWN` = "#FAC9A1",
  `TAN BROWN` = "#FDAA42",
  `SIMPLE BROWN` = "#E95B0F",
  `DEEP AQUA` = "#4AB0F2",
  `MARINE BLUE` = "#013040",
  `BRICK RED` = "#B42C02",
  `SEA FOAM` = "#CCEBF0",
  `DUSTY BROWN` = "#C0AA81",
  `KHAKI` = "#AFC871",
  `DARK AQUA` = "#3076B1",
  `DULL BLUE` = "#234088",
  `DULL BROWN` = "#32332D",
  `DULL RED` = "#BF2E0F",
  `BROWN` = "#BB853F",
  `COOL BROWN` = "#C7BEAF",
  `BLUE GRAY` = "#414550",
  `DULL AQUA` = "#7FA2C0",
  `FLAT AQUA` = "#57C9DD",
  `MAGENTA` = "#B45090",
  `PURPLE` = "#C69CD0",
  `RICH GREEN` = "#6B8637",
  `GREEN` = "#59AB47",
  `BLUE GREEN` = "#81ADD2",
  `DULL YELLOW` = "#E1E100",
  `PALE AQUA` = "#DEE4F0",
  `LIGHT BLUE` = "#679CD0",
  `FLAT BLUE` = "#596980",
  `OCEAN BLUE` = "#003C70",
  `FLAT BROWN` = "#80815A",
  `SILT BROWN` = "#806645",
  `FADED BLUE` = "#6899BA",
  `LIGHT ROSE` = "#DDCCBA",
  `ROSE` = "#CC7667",
  `FAR SHADOW` = "#432233",
  `BLUE SLATE` = "#8C8F9E",
  `DEEP BEIGE` = "#B8B397",
  `WARM BEIGE` = "#F6D2B8",
  `BEIGE` = "#F6BA90",
  `STOPSIGN RED` = "#FF6E42",
  `MUDDY BROWN` = "#9B5B4F",
  `RED CLAY` = "#8F5F39",
  `DEEP CAVE` = "#303129",
  `BRIGHT BEIGE` = "#FFCCB1",
  `SKY BLUE` = "#99CFFE",
  `GREEN STONE` = "#7FAA9F",
  `DRY GREEN` = "#A6B683",
  `SHRUB BARK` = "#869463",
  `PINE NEEDLE` = "#395137",
  `BROWN GRAY` = "#867A6E",
  `WET BARK` = "#587040",
  `FOGGY LEAF` = "#99C383",
  `FOREST MIST` = "#9DDFDE",
  `SHADED MIST` = "#4D6160",
  `FOREST STREAM` = "#303944",
  `SANDY HILL` = "#FCEAA0",
  `RAINCLOUD` = "#A6B4BF",
  `DIRT` = "#928C2E",
  `BLUE RIVER` = "#3B7492",
  `RED BROWN` = "#A56621",
  `DEEP RIVER` = "#475965",
  `DARK LEAF` = "#548F01",
  `FOREST BROWN` = "#B5B016",
  `REDWOOD` = "#8B2F00",
  `CONIFER` = "#40663F",
  `DRY MEADOW` = "#DDE02B",
  `DAMP MOSS` = "#848B64",
  `CLOUD` = "#EBECF0",
  `RIVER` = "#5B659F",
  `LAKE` = "#01479D",
  `DRY SHRUB` = "#D58A60",
  `DRY HAY` = "#FFC283",
  `WET SOIL` = "#5A6441",
  `ORANGE` = "#F7941D"
)

# NOTE: Using Roxygen formatting for comment blocks so that it will be easy to make this into a package later

#' Function to extract colors as hex codes
#'
#' @param ... Character names of colors
#'
im_cols <- function(...) {
  cols <- c(...)
  
  if (is.null(cols)) {
    return(im_colors)
  } else {
    return(im_colors[cols])
  }
}

# TODO: Narrow these down. From JP: "One thing that might be good is to have different palettes for various uses. For example one palette for un-ordered categories (like veg types or soil types), one for ordered categories (degree of wood rot, or categories of veg cover) and one or more for numeric gradients."
# List of all color palettes
im_palettes <- list(
  `IMD` = im_cols("IMD RED", "IMD DBROWN", "IMD LBROWN", "IMD GOLD", "IMD GREEN", "IMD BLUE", "IMD WHITE", "IMD GRAY", "IMD BLACK"),
  `NPS` = im_cols("NPS BLUE", "NPS ORANGE", "NPS BROWN", "IMD WHITE L", "NPS GREEN", "NPS BROWN D"),
  `DRY TO WET` = im_cols("IMD RED", "DULL RED", "TAN BROWN", "IMD BLUE", "DEEP AQUA", "DARK AQUA", "LAKE", "OCEAN BLUE", "MARINE BLUE"),
  `DRY TO WET GRADIENT` = im_cols("DULL RED", "LAKE"),
  `WATER PH GRADIENT` = im_cols("BRICK RED", "NPS ORANGE", "DULL YELLOW", "IMD GREEN", "SPRING BLUE", "DULL BLUE", "PURPLE"),
  `WATER TEMP GRADIENT` = im_cols("SKY BLUE", "DULL YELLOW", "ORANGE", "RED CLAY"),
  `WATER SPCOND GRADIENT` = im_cols("AQUA", "LIGHT BLUE", "SHADED MIST", "FOREST STREAM"),
  `WATER OXYGEN GRADIENT` = im_cols("FAR SHADOW", "GREEN STONE", "FOREST MIST", "FADED BLUE", "FOGGY LEAF", "IMD GREEN"),
  `WATER QUALITY` = im_cols("MAGENTA", "IMD RED", "DULL PINK", "DULL AQUA", "NPS BLUE"),
  `DS DISTURBANCE` = im_cols("IMD BLACK", "IMD GOLD", "CONIFER", "SANDY HILL", "DEEP BEIGE", "FLAT BLUE", "STOPSIGN RED", "LAKE", "IMD BLUE", "DRY MEADOW", "IMD BLACK D"),
  `DS WILDLIFE` = im_cols("MUDDY BROWN", "DRY GREEN", "IMD LBROWN", "RIVER", "LAKE", "FLAT AQUA", "DRY MEADOW", "IMD DBROWN D"),
  `DS VEGETATION` = im_cols("IMD DBROWN", "WET SOIL", "SHRUB BARK", "GREEN", "DARK LEAF", "IMD GREEN L", "SEA FOAM", "RAINCLOUD", "DEEP RIVER", "STOPSIGN RED", "IMD BLACK D"),
  `IU LAKE GROUND` = im_cols("WET SOIL", "SANDY HILL", "WARM BEIGE", "IMD BLACK", "DULL YELLOW", "DULL RED", "GREEN STONE", "DRY SHRUB", "BLUE GREEN", "BLUE RIVER", "DULL BLUE", "SIMPLE BROWN", "NPS BROWN D", "IMD GOLD"),
  `IU LAKE INVASIVES` = im_cols("DRY MEADOW", "DARK LEAF", "IMD GREEN D", "DAMP MOSS", "NPS GREEN", "DRY GRASS"),
  `IU LAKE DISTURBANCE` = im_cols("PURPLE", "IMD GRAY", "FOREST BROWN", "PINE NEEDLE", "IMD BLACK", "DULL BLUE", "IMD RED", "STOPSIGN RED", "MAGENTA", "IMD GOLD", "IMD BLUE"),
  `CANOPY GAP` = im_cols("RICH GREEN", "IMD GREEN L"), 
  `BASAL GAP` = im_cols("IMD BROWN", "SHRUB BARK")
)

#' Return function to interpolate an I&M color palette
#'
#' @param palette Character name of palette in im_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
im_pal <- function(palette = "NPS", reverse = FALSE, ...) {
  #check to see if the palette exists; if not return the default 'NPS' and a message to the user
  if (is.null(im_palettes[[palette]])) {
    palette <- "NPS"
    message("Palette does not exist. Using 'NPS' instead.")
  }
  
  pal <- im_palettes[[palette]]
  
  if (reverse) pal <- rev(pal)
  
  return(colorRampPalette(pal, ...))
}
