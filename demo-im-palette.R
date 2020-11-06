library(pals)
source('im-palette.R')

# Display a list of available palette names
print(names(im_palettes))

# Interpolate colors and save those to variables
dry_to_wet_5 <- im_pal('DRY TO WET')(5)     #generate 5 colors from 'DRY TO WET' palette
dry_to_wet_10 <- im_pal('DRY TO WET')(10)   #generate 10 colors from 'DRY TO WET' palette
nps_5 <- im_pal()(5)                        #generate 5 colors from the default palette, which is 'NPS'

# Test the look of each set of colors
pal.test(dry_to_wet_5)
pal.test(dry_to_wet_10)
pal.test(nps_5)