
install.packages("dplyr")
install.packages("readr")
library(readr)
library(dplyr)
library(data.table)
library(tidyverse)
library(ggplot2)

report= read_csv('2020_NL_Region_Mobility_Report.csv')
head(report)
tail(report)
glimpse(report)
summary(report)
table(report$sub_region_2)
View(report)

summary(report$date)

report2=report %>% filter(parks_percent_change_from_baseline > 700)
names(report)

report=report %>%  rename(retail_baseline = retail_and_recreation_percent_change_from_baseline)
report = report %>% rename(province = sub_region_1, city = sub_region_2)
report = report %>% mutate(avg_mobility = rowMeans(cbind(retail_baseline, ))
print(summary(df))  # Print Basic summary statistics

inspect_data <- function(df) {
  cat("Generating descriptive statistics...\n\n")
  cat("\n\n") # Add new line
  print(summary(df))
  print(nrow(df))
  print(ncol(df))
  print(min(date) & max(date))
  
summaryuser= function(df) {
  cat('fgfvghghhnhhjhjhjm\n\n')

report =report %>% mutate(province = ifelse(is.na(province), mean(province, na.rm=TRUE), province))                       
summary(is.na(report$province))

report %>% filter(province == "North Brabant") %>% ggplot() + geom_line(aes(x=date , y=residential_percent_change_from_baseline, color='red'))+geom_line(aes(x=date , y=workplaces_percent_change_from_baseline, color='blue'))
           theme_bw() + labs(x="test", y="test2", title = "this is for test")
           
table = report %>% pivot_longer(cols = c(residential_percent_change_from_baseline, workplaces_percent_change_from_baseline), names_to = "place", values_to = "avg_mobility")         
............................................


interviews_plotting <- read_csv("https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/interviews_plotting.csv")

interviews_plotting %>% ggplot(aes(x=respondent_wall_type, y= liv_count))+geom_boxplot(alpha=0)+
                               geom_jitter(aplpha= 0.5 , width = 0.2, height = 0.2)
