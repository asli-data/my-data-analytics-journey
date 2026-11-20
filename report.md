# Instagram Content Engagement Analysis
## Statistical Analysis Report

### 1. Introduction

The purpose of this project is to analyze Instagram content engagement and investigate whether engagement differs across content formats.

The analysis focuses on three content types: Carousel, Image, and Reel.

### 2. Research Question

Which types of Instagram content receive the highest average user engagement?

### 3. Dataset Overview

The dataset contains 29,999 observations and 23 original variables.

The analysis examined:
- Likes
- Comments
- Shares
- Saves
- Media type
- Engagement rate

The dataset was checked for missing values and duplicated rows. No missing values or completely duplicated rows were detected.

**Data limitation:** The original dataset source, representativeness, and engagement-rate calculation formula have not been independently verified.

### 4. Methodology

Total engagement was calculated as:

Total Engagement = Likes + Comments + Shares + Saves

The analysis included:
- Mean and median comparisons
- Bar chart visualizations
- One-way ANOVA
- Kruskal-Wallis test
- Fligner-Killeen test

### 5. Descriptive Results

#### 5.1 Average Engagement Rate

| Content Type | Average Engagement Rate |
|---|---:|
| Carousel | 4.18% |
| Image | 4.23% |
| Reel | 4.23% |

#### 5.2 Average Total Engagement

| Content Type | Average Total Engagement |
|---|---:|
| Carousel | 351.86 |
| Image | 355.53 |
| Reel | 351.06 |

Image content had the highest average total engagement, while Reel content had a marginally higher average engagement rate.

The differences were small.

### 6. Statistical Analysis

#### 6.1 One-way ANOVA

- F-statistic: 1.102
- p-value: 0.332

Since the p-value is greater than 0.05, the null hypothesis cannot be rejected.

There is insufficient evidence of a difference in mean engagement rates between content types.

#### 6.2 Kruskal-Wallis Test

- Chi-squared: 1.6134
- p-value: 0.4463

The result does not provide sufficient evidence of differences in engagement-rate distributions across content types.

#### 6.3 Fligner-Killeen Test

- Chi-squared: 2.3933
- p-value: 0.3022

There is insufficient evidence that the group variances differ.

### 7. Interpretation

Although Image and Reel content showed slightly higher average engagement rates, the statistical tests did not identify a significant difference.

Therefore, the results do not support the conclusion that one content format performs significantly better than the others.

### 8. Limitations

- The dataset's source and representativeness have not been independently verified.
- The engagement-rate formula was not independently verified.
- The distributions showed outliers and deviations from normality.
- Independence between observations was not established; repeated posts from the same accounts may affect this assumption.
- The results should not be generalized to all Instagram accounts.

### 9. Conclusion

This project provided an opportunity to practice data cleaning checks, descriptive statistics, visualization, and statistical hypothesis testing using R.

Based on the available dataset, no statistically significant difference in engagement rates was detected among Carousel, Image, and Reel content.

### 10. Tools

- R
- RStudio
- Base R
- Statistical hypothesis testing
- Data visualization
