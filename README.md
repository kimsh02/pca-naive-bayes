# MATLAB PCA & Naive Bayes Implementations

This repository contains MATLAB scripts for two key assignments:

1. **Principal Component Analysis on Handwritten Digits** – visualizing raw
   digit vectors, computing the sample mean and covariance submatrix, extracting
   top eigenvalues/vectors, projecting data into 2D, plotting the digit cloud,
   and measuring average reconstruction error.

1. **Naive Bayes Text Classifier** – estimating class priors, building a
   bag-of-words model, computing class-conditional and posterior probabilities,
   evaluating classifier performance, and exploring the effect of training
   sample size.

## Features

### Principal Component Analysis (PCA)

Computed covariance matrices and extracted the top two eigenvectors
(eigenvalues: 237,155 & 145,188) to reduce dimensionality and uncover dominant
variance directions.

Visualized scaled image renderings of principal components and generated a 2D
scatter plot of 400 samples with color-coded digits (‘3’ vs. ‘8’), demonstrating
clear class separation.

### Data Projection & Reconstruction

Projected original digit data onto PCA axes (e.g., p3 = [240.9, 297.49]; p8 =
[–208, –594.72]).

Measured average reconstruction error (~1.4 × 10⁶) to quantify information
retention and optimize component selection.

## Naive Bayes Classification Pipeline

Estimated class priors and constructed feature vectors.

Calculated class-conditional likelihoods and posterior probabilities for binary
classification.

Evaluated classifier performance across varying training sample sizes,
optimizing thresholds to balance accuracy and generalization.

### Results

**PCA Eigenvalues:** 237,155 & 145,188

**Average Reconstruction Error:** ~1.4 × 10⁶

View the [pdf report](hw3.pdf).
