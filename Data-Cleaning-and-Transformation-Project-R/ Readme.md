# Data cleaning and transformation in R

## **Project README**

This repository contains scripts and data for the "Human Activity Recognition Using Smartphones" project. Below is an overview of the project structure and instructions on how to use the scripts.

### Project Structure

-   **Scripts:**
    -   **`run_analysis.R`**: R script for merging, cleaning, and analyzing the Human Activity Recognition dataset.
    -   **`CodeBook.md`**: Markdown file describing variables, data, and transformations performed on the dataset.
-   **Data:**
    -   The project utilizes the "Human Activity Recognition Using Smartphones" dataset from the UCI Machine Learning Repository. It includes training and test sets, along with feature information, activity labels, and subject identifiers.
-   **Output:**
    -   The output of **`run_analysis.R`** is a tidy dataset containing the average of each variable for each activity and subject.

### Usage Instructions

1.  Ensure R is installed on your machine.
2.  Download the "Human Activity Recognition Using Smartphones" dataset and extract it to a folder named "UCI HAR Dataset" in your working directory.
3.  Clone or download this repository to your local machine.
4.  Open R or RStudio.
5.  Set your working directory to the location of the cloned repository.
6.  Run the **`run_analysis.R`** script.
7.  The script will read, clean, and analyze the dataset, generating a tidy dataset as output.

### Additional Notes

-   The tidy dataset will be saved as a TXT file named "tidy_dataset.txt" in the main directory.
