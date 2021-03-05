## Objective ---------------------------

  # This project's objective is to:
    # Learn to import data into R from .txt file using read.table().
    # Learn to write data from R into .csv file using write.csv().


## Libraries ---------------------------

library(pryr)
library(ISLR)
library(boot)
library(data.table)
library(plyr)


## Step 1: Import Data-set to R --------

# Import .txt file to R and create data frame out of it.
people <- read.table("people-dataset.txt", header = TRUE, sep=",")
head(people)

# Create same data set with additional column called grade average with ddply().
people2 <- ddply(people,"Sex",transform,Grade.Average=mean(Grade))
head(people2)


## Step 2: Letter "i" Names ------------

  # Convert the data set to a dataframe for names whose name contains the letter i.
  # Create a new data set with those names.

i_students <- subset(people, grepl("i", people$Name, ignore.case=T))
rownames(i_students) <- 1:14
head(i_students)


## Step 3: Write CSV File --------------

write.csv(i_students, file="i_students.csv")


## Analysis ----------------------------

  # Learned to import data into R from .txt file using read.table().
  # Learned to write data from R into .csv file using write.csv().
  # Learned how to use grepl(), ddply(), and read.table().


# GitHub: (https://github.com/koeneralex/rprogramming-week8-input-output)



