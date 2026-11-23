-- Prepare the raw Eurostat gender pay gap data for further analysis

SELECT
    frequency,
    unit,
    industry,
    country,
    year,
    gender_pay_gap_percent

FROM {{ source('eurostat', 'raw_gender_pay_gap') }}
