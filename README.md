# ButlerCaveSediment
This data folder houses more than just code files. Here, you will find all data used in this project in DataSummary.xlsx and 
supplementary photos of the core samples collected as part of this project.

More importantly you will find the coded files you need to recreate the particle size analysis in Gradistate. The raw files from the
particle size analyzer need significant processing to be able to be analyzed by gradistat.

First you must save all your files as a text file.

Then you must create a bin size text file which is just a list of bins based on your data. You may also need to create dataframe, 
sample, and replication list txt files depending on how many samples you are trying to process at once. When all of your data files 
are converted to a .txt you can use the file particlesize.R to combine them all into one CSV file. Then you are abe to download the 
Gradistatv9.xlsm file to analyze your csv data.
