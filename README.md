# Germany's Gender Pay Gap Across Industries

## Project Overview

I am developing a reproducible data analytics project to investigate how Germany's unadjusted gender pay gap differs across industries and how it has changed over time.

My goal is to transform official public statistics into clear, evidence-based insights that can support further investigation by HR and People Analytics teams.

## Research Questions

1. Which industries in Germany have the highest and lowest unadjusted gender pay gaps?
2. How has the gender pay gap changed over time?
3. Which industries have experienced the largest increases or decreases?
4. Where data is available, how do men's and women's gross hourly earnings change alongside the gap?
5. What additional information would employers need to investigate pay equity within their own organisations?

## My Technical Approach

- **Python:** I will use Python, requests and pandas to retrieve, clean, explore and validate official data.
- **PostgreSQL and SQL:** I will store the analysis-ready data and query industry differences and trends over time.
- **Data quality:** I will check missing values, duplicate records, industry classifications, units and year coverage.
- **Dashboard:** I will build a reproducible interactive dashboard using Tableau or Power BI to compare industries and explore trends.
- **Git and GitHub:** I will document my workflow, track changes and make the project accessible for review.

## Data Sources

### Main source: Eurostat

Dataset: Gender pay gap in unadjusted form by NACE Rev. 2 activity.

https://ec.europa.eu/eurostat/databrowser/product/view/earn_gr_gpgr2

### Supplementary source: Destatis

GENESIS table 62361-0046.

https://genesis.destatis.de/datenbank/online/statistic/62%2A/table/62361-0046

I will use Eurostat as my main historical source and assess Destatis as a separate supplementary source. I will document differences in classifications, reference periods and coverage before making comparisons.

## Important Limitation

The unadjusted gender pay gap is a descriptive indicator. It does not, by itself, prove unequal pay for the same work or establish discrimination.

## Planned Deliverables

- Reproducible Python notebooks or scripts
- Documented data-cleaning and quality checks
- SQL queries and analysis-ready tables
- Interactive dashboard
- Summary of findings and limitations
- Documentation explaining how to reproduce the analysis

## Project Status

Currently setting up the repository and preparing the data acquisition workflow.
