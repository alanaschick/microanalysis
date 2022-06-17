# Functional Annotation

## Amplicon sequences 

### Picrust2 notes

How it works:

Picrust2 has a reference database of annotated genomes placed on a phylogenetic tree, including a model of how well conserved genes are across the tree. In other words, given how close two species are on the tre, how likely is it that a given gene will be shared, for all genes. The amplicon sequences are placed on the tree, then Picrust2 estimates what genes that species is likely to have based on the annotated genomes of the species near it on the tree and how well conserved those genes are. Doing this for all amplicon sequences will estimate the functional content of a sample.

The problems arise when either A) a species has conserved amplicon sequence but substantially variable gene content, so even if you know where it goes on the tree you cant make a good guess about the presence or absence of those variable genes, or B) your observed amplicon sequence comes from a place on the tree without a lot of information - it's nearest neighbors aren't very near or you don't have enough information to estimate gene conservation well - so you end up with highly speculative, weak estimates, which are probably largely incorrect. If either of those problem cases applies to highly abundant species/16s sequences in your sample, your overall picture of the samples functional content can be way off.

On the other hand, if your sample is mainly comprised of very well characterized species which are well represented in the reference data and which don't have a lot of intraspecies functional variation, you can infer a remarkably accurate functional profile of your sample using picrust. (In terms of functional capacity/genes present at least; you don't know anything about what's actually being expressed... But shotgun metagenomics doesn't help you there, either.)



## Shotgun sequences
