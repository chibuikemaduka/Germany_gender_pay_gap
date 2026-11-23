-- Prepare the gender pay gap dataset for individual industry analysis
-- Exclude broad economic aggregates while retaining individual industries

SELECT
    frequency,
    unit,
    industry,
    country,
    year,
    gender_pay_gap_percent

FROM {{ ref('stg_gender_pay_gap') }}

-- Exclude the three broad economic aggregates
WHERE industry NOT IN (
    'Business economy',
    'Industry, construction and services (except activities of households as employers and extra-territorial organisations and bodies)',
    'Industry, construction and services (except public administration, defense, compulsory social security)'
)
