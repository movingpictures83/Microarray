# Microarray
# Language: R
# Input: DIR (location of CEL files)
# Output: CSV (expression levels)
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: affy_1.66.0, gcrma_2.60.0

PluMA plugin to process microarray data.  Expected input is actually a directory, and the plugin
will read any .CEL files in that folder.

Microarray will first run GCRMA (Wu et al., 2019) which adjusts for background intensities and
uses the Robust Multiarray Average algorithm to compute expressions.  Error levels are also estimated
through a call to the exprs() function.

The output expression levels will be a CSV file, with rows representing genes and columns samples.

The example data originated from a repository of acute respiratory viral infection data, from Duke
University.  This is available here: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE17156
