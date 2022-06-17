# Generating Abundance Tables

## Dada2 notes

Species assignment. The function ‘addSpecies’ in dada2 has an option to allow multiple species assignments. This can be set to a number (ie. 3) or `TRUE`, the default is `FALSE`). If set to a number, if there are more than that number, NA will be returned.

From dada2 documentation:

allowMultiple 

Default FALSE. Defines the behavior when multiple exact matches against different species are returned. By default only unambiguous identifications are return. If TRUE, a concatenated string of all exactly matched species is returned. If an integer is provided, multiple identifications up to that many are returned as a concatenated string.

In general, best practice it to set this to `TRUE`. 
