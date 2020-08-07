library(pals)
source('im-palette.R')

# See palette names
palette_options <- names(im_palettes)
palette_options

# Interpolate palettes
nps_5 <- im_pal()(5)
dry_to_wet_5 <- im_pal('DRY TO WET')(5)
dry_to_wet_10 <- im_pal('DRY TO WET')(10)

# View palettes
pal.test(nps_5)
pal.test(dry_to_wet_5)
pal.test(dry_to_wet_10)
