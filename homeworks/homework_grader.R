####################################
# This script creates a grading of students
# based on a folder of submission, a set of criteria in a testfile, and then collects the data.


# 2023.09.09.
# Bence Szabo
####################################

############
# Week01
############

rm(list = ls())

library(tidyverse)

Mysubmission_dir <- paste0(getwd(), "/homeworks/week01/submissions/")
Mytestfile <- paste0(getwd(), "/homeworks/week01/grader_week01.R") 

grades <- gradeR::calcGrades(submission_dir = Mysubmission_dir
                             , your_test_file = Mytestfile
                             , suppress_warnings = TRUE
                             , verbose = TRUE)

## get the ID-s from the data
grades <- grades %>% 
  mutate(id = str_remove_all(id, Mysubmission_dir),
         id = str_remove_all(id, ".R")
         ) %>% 
  rowwise() %>% mutate(total_score = sum(c_across(starts_with("Q"))))

write_csv(grades, paste0(getwd(), "/homeworks/week01/grades.csv"))
