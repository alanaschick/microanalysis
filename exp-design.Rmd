# (PART) Part 1: Samples to Sequences {-}

# Experimental Design Considerations

## Amplicon versus Shotgun

Amplicon sequencing (often, but not necessarily the amplicon is the 16S rRNA gene) is a type of seuqencing where a specific region is targeted and amplified for sequencing. For 16S, this gene is found in all Bacteria and Archaea and will only identify these types of organisms.


Shotgun metagenomic sequencing
This is an untargeted approach that aims to sequence all the genomic DNA present in a sample. Therefore this method is able to identify bacteria, viruses, and fungi. Analysing these reads requires more complex bioinformatics methods and can either be assembled to create partial or full microbial genomes, or aligned to databases of microbial marker genes. 

Cost of shotgun depends on the depth of coverage required, which depends on microbial-to-host DNA ratio. Fecal samples have mostly microbial DNA, for example, and therefore require less depth. Skin swabs and cheek swabs may contain more human DNA, so 16S may be more suitable for the skin and oral microbiome. Some estimates: stool samples have less than 10% human DNA, other samples (saliva, throat, vaginal) may be more than 90% human DNA.

Paper investigating the effect of host DNA and sequencing depth on taxonomic resolution of shotgun metagenomic sequencing:

Pereira-Marques et al 2019. Impact of Host DNA and Sequencing Depth on the Taxonomic Resolution of Whole Metagenome Sequencing for Microbiome Analysis. Frontiers in Microbiology. 

Summary: at a depth of ~30 million reads per sample, taxonomic resolution is similar for a mock community of bacteria only and a sample with 10% host DNA. Resolution gets worse for samples with 90% or 99% host DNA. The sequencing depth seems to matter more for samples with 90% host DNA. 

In addition, there are some methods to reduce the amount of host DNA present in samples prior to sequencing.


Resolution
The level (ie. genus, species) of resolution achieved by amplicon sequencing is limited by two things: 1) the variation present across the targeted gene within a genus, species, strain, etc and 2) sequencing error


Composition versus Function
Recent evidence suggests that functional metagenomic data may provide more power for identifying differences between healthy and diseased microbiomes. 16S cannot directly profile microbial genes/functions, but some tools (such as Picrust) attempt to predict microbiome function with 16S rRNA gene data. Shotgun can provide data on microbial gene content. Therefore, if the researcher is interested in microbiome functional profiles (such as antibiotic resistance genes or specific metabolic functions), shotgun is the better choice. The limitation is that current databases are still quite limited in identifying many functional genes. 

Shallow shotgun sequencing is roughly defined as 1.5 million reads per sample (as few as 0.5 million).

Ultra-deep shotgun metagenomic sequencing would be 2.5 billion reads per sample (so roughly 1000 times more coverage). 

## 16S Resources

The problem: different regions of the bacterial 16S rRNA gene evolve at different evolutionary rates. 

Teng, F., Darveekaran Nair, S.S., Zhu, P. et al. Impact of DNA extraction method and targeted 16S-rRNA hypervariable region on oral microbiota profiling. Sci Rep 8, 16321 (2018). https://doi.org/10.1038/s41598-018-34294-x

Tested the effect of DNA extraction method and 16S region on the accuracy of sequencing oral microbial communities. Used a mock community of only gram-positive species. Found that DNA extraction method had a much larger effect on variation in microbial community. Compared lysozyme method to bead-beating - found that bead-beating led to lower DNA yield but highter accuracy. Found V3-V4 and V4-V5 to be more reproducible than V1-V3.


Fouhy, F., Clooney, A.G., Stanton, C. et al. 16S rRNA gene sequencing of mock microbial populations- impact of DNA extraction method, primer choice and sequencing platform. BMC Microbiol 16, 123 (2016). https://doi.org/10.1186/s12866-016-0738-z

Compared V1-V2, V3-V4, and V4 regions on human fecal samples. Found V4 region samples had higher alpha diversity. 


Rintala A, Pietilä S, Munukka E, et al. Gut Microbiota Analysis Results Are Highly Dependent on the 16S rRNA Gene Target Region, Whereas the Impact of DNA Extraction Is Minor. J Biomol Tech. 2017;28(1):19-30. doi:10.7171/jbt.17-2801-003

Compared V3-V4 and V4-V5 regions on human fecal samples. Found higher diversity in V3-V4 samples. The Firmicutes-to-Bacteroidetes ratio was significantly lower in V4–V5 sequencing. More specifically: "In the bacterial genus level, QIIME reported statistically significant differences in 21 genera between the V3–V4 and V4–V5 sequencing protocols. For example, the genus Parabacteroides was significantly more abundant in the samples analyzed with V4–V5 sequencing (FDR, P < 0.05), whereas Bifidobacterium, Coprococcus, and Blautia were more abundant in the V3–V4 samples (FDR, P < 0.05 for all). In addition, the genera Sphingomonas, Roseburia, and Bilophila were detectable only with V3–V4 sequencing, whereas Clostridium and Lactococcus could only be detected with V4–V5 sequencing."


Tremblay J, Singh K, Fern A, Kirton ES, He S, Woyke T, Lee J, Chen F, Dangl JL, Tringe SG. Primer and platform effects on 16S rRNA tag sequencing. Frontiers in microbiology. 2015 Aug 4;6:771.

Tested V4, V6-V8, and V7-V8 on mock communities. Found beta diversity metrics robust to region used. "V4 samples showed the highest similarity toward the expected taxonomic distribution. The largely bacteria-specific V7–V8 tags failed to amplify Halobacteria as expected, but also severely underrepresented Gammaproteobacteria and/or overrepresented Firmicutes."

Ghyselinck J, Pfeiffer S, Heylen K, Sessitsch A, De Vos P. The effect of primer choice and short read sequences on the outcome of 16S rRNA gene based diversity studies. PloS one. 2013 Aug 19;8(8):e71360.

Tested ten well established universal primers. Found V4 primers to be best and V6 primers least reliable. 


