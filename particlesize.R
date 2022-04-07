setwd("/Volumes/GoogleDrive/My Drive/Butler Cave/")
#set your own workng drive
install.packages("dplyr")
install.packages("tidyverse")
install.packages("readxl")
install.packages("ggplot2")
install.packages("colorspace")
install.packages("scales")
library(dplyr)
library(tidyverse)
library(readxl)
library(ggplot2)
library(colorspace)
library(scales)

#Before going to the next step, make sure you have created a file that is only the particle size bins as they appear on the data files
size_file <- "particle_size_bins.txt"
size <- read.delim(size_file, header = FALSE)
size[,2] <- list(NULL)

setwd("/Volumes/GoogleDrive/My Drive/Butler Cave/ParticlesizeR")
#Make sure your text files of data for each sample are stored here

#The following code will combine all text files into one csv

files <- list.files()
bins <- data.frame(size)
row.names(bins) <- bins[1:93,]
bins <- bins[1:93,0]

for (xfile_name in files) {
  x_data <- read.delim(paste0(xfile_name), header = TRUE)
  x_data[,1] <- list(NULL)
  assign(xfile_name, x_data) 
  bins <- cbind(bins, get(xfile_name))
}

colnames(bins) <- files
write.csv(bins, file = "BTC.csv")

#You can now use this CVS to copy data into the gradistat program to analyze the samples
