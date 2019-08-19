# Microarray
# Language: R
# Input: CEL (microarray data)
# Output: CSV (expression levels)
# Tested with: PluMA 1.0, R 3.2.5

PluMA plugin to process microarray data.  Expected input is actually a directory, and the plugin
will read any .CEL files in that folder.

Microarray will first run GCRMA (Wu et al., 2019) which adjusts for background intensities and
uses the Robust Multiarray Average algorithm to compute expressions.  Error levels are also estimated
through a call to the exprs() function.

The output expression levels will be a CSV file, with rows representing genes and columns samples.
