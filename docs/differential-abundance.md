# Differential Abundance

Comparing methods:

https://www.nicholas-ollberding.com/post/identifying-differentially-abundant-features-in-microbiome-data/

Many methods:

Conservative: Aldex2, Ancom

Less conservative: edgeR, Lefse, Limmavoom

Method choice depends on your data as well as your tolerance for false positives or spurious results. 


## Corncob notes

Beta binomial regression.

How to interpret coefficients:

By default, corncob uses the logit link between the expected relative abundance and the covariates. This can be interpreted on the log-odds scale, similar to with logistic regression. Typically, I recommend users interpret parameters directly on the logit scale, for example "The expected difference in the logit-transformed relative abundance between two samples that differ by one unit change in [my covariate] controlling for [all controls] is [coefficient value]". If you want to interpret more directly, I'd recommend looking up the interpretation of log-odds, or logistic regression parameters. Unfortunately, the definition is not intuitive, and it is necessary to use a link function in order to appropriately model something on the [0,1] scale, such as relative abundance.

https://github.com/bryandmartin/corncob/issues/68
(Note: I have ideas (but not time) about how to improve this feature)

https://github.com/bryandmartin/corncob/blob/master/R/print_differentialTest.R
(This is the code for the function that performs this differential test)



## DESeq2 notes


DESeq2: normalizes by estimating the negative binomial distribution for each taxon in each sample
https://bioconductor.org/packages/devel/bioc/vignettes/phyloseq/inst/doc/phyloseq-mixture-models.html

DESEQ analysis on RNA-seq data:
https://compbiocore.github.io/deseq-workshop-1/assets/deseq_workshop_1.html

Analyzing RNA-seq data with DESeq2:
http://bioconductor.org/packages/devel/bioc/vignettes/DESeq2/inst/doc/DESeq2.html#contrasts



## metagenomeSeq

MetagenomeSeq: uses sample quantiles to normalize accounting for undersampling.
