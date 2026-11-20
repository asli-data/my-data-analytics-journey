
# Instagram Content Engagement Analysis
# Project 1 - Data Analytics Portfolio

# 1. Import dataset
instagram_data <- read.csv(file.choose())

# 2. Explore dataset
dim(instagram_data)
str(instagram_data)
head(instagram_data)

# 3. Check data quality
colSums(is.na(instagram_data))
sum(duplicated(instagram_data))

# 4. Calculate total engagement
instagram_data$total_engagement <-
  instagram_data$likes +
  instagram_data$comments +
  instagram_data$shares +
  instagram_data$saves

# 5. Calculate mean engagement by media type
aggregate(total_engagement ~ media_type,
          data = instagram_data,
          FUN = mean)

# 6. Calculate mean engagement rate
aggregate(engagement_rate ~ media_type,
          data = instagram_data,
          FUN = mean)

# 7. Calculate median total engagement
aggregate(total_engagement ~ media_type,
          data = instagram_data,
          FUN = median)

# 8. Calculate median engagement rate
aggregate(engagement_rate ~ media_type,
          data = instagram_data,
          FUN = median)

# 9. ANOVA test
anova_model <- aov(engagement_rate ~ media_type,
                   data = instagram_data)
summary(anova_model)

# 10. Kruskal-Wallis test
kruskal.test(engagement_rate ~ media_type,
             data = instagram_data)

# 11. Fligner-Killeen test
fligner.test(engagement_rate ~ media_type,
             data = instagram_data)


# 12. Visualize average engagement rate

avg_engagement <- aggregate(
  engagement_rate ~ media_type,
  data = instagram_data,
  FUN = mean
)

barplot(
  avg_engagement$engagement_rate,
  names.arg = avg_engagement$media_type,
  main = "Average Engagement Rate by Media Type",
  xlab = "Media Type",
  ylab = "Average Engagement Rate",
  col = "lightblue"
)

# 13. Visualize total engagement

avg_total <- aggregate(
  total_engagement ~ media_type,
  data = instagram_data,
  FUN = mean
)

barplot(
  avg_total$total_engagement,
  names.arg = avg_total$media_type,
  main = "Average Total Engagement by Media Type",
  xlab = "Media Type",
  ylab = "Average Total Engagement",
  col = "lightgreen"
)
