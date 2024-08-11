# Layoffs Data Analysis Using SQL

## Overview

This project focuses on conducting an Exploratory Data Analysis (EDA) on a layoffs dataset to uncover insights into the scale, distribution, and trends of layoffs across various companies, stages, and countries. The analysis provides a comprehensive understanding of the factors influencing layoffs in different contexts.

## Dataset Description

The dataset (`layoffs_staging2`) includes key fields such as:

- **Company**: Name of the company where layoffs occurred.
- **Total Laid Off**: Number of employees affected by the layoffs.
- **Percentage Laid Off**: Proportion of the workforce that was laid off.
- **Funds Raised**: Total funding raised by the company before the layoffs, measured in millions.
- **Date**: Date of the layoff event.
- **Country**: Country where the layoffs took place.
- **Stage**: The stage of the company (e.g., Seed, Series A, Public) at the time of the layoffs.

## Key Insights

### Comprehensive Data Overview
The analysis starts by retrieving all records to gain a complete understanding of the layoffs across the dataset.

### Layoff Extremes
Identifying the maximum number of layoffs and the highest percentage of workforce reductions highlights the most significant layoffs within the data.

### 100% Workforce Layoffs
Special focus is given to companies that laid off their entire workforce, offering insights into the scale and financial backgrounds of these companies.

### Layoffs by Company and Country
Aggregating layoffs by company and country provides a clear picture of which entities and regions were most affected, offering a deeper understanding of the impact across different geographical and organizational contexts.

### Trends Over Time
Analyzing layoffs on a monthly and yearly basis helps identify temporal trends and patterns, revealing periods of heightened layoff activity and potential correlations with external events.

### Rolling Totals and Cumulative Impact
Calculating rolling totals of layoffs over time offers a cumulative view, helping to understand how layoffs have accumulated over specific periods.

### Stage-Wise Analysis
Examining layoffs based on the company's stage provides insights into which stages of development are more susceptible to workforce reductions, whether in early-stage startups or more established public companies.

### Top Companies by Layoffs
The analysis ranks companies by the total number of layoffs, identifying the top entities responsible for the most significant workforce reductions each year.

## Insights and Visualizations

The findings from this analysis offer valuable insights into the dynamics of layoffs, including identifying the companies and regions most affected, understanding temporal trends, and highlighting stage-specific vulnerabilities. These insights can be effectively visualized using tools like Power BI, Tableau, or Python to create interactive dashboards.

## Future Directions

Further analysis could explore correlations between layoffs and external factors such as economic conditions, industry performance, or funding cycles. Additionally, predictive modeling could be employed to forecast potential future layoffs based on historical data and emerging trends.
