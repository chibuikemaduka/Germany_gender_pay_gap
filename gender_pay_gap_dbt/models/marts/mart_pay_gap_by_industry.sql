-- Calculate gender pay gap statistics for each individual industry
-- across the available observations from 2007 to 2024

SELECT
    country,
    industry,
    COUNT(*) AS observation_count,
    MIN(year) AS first_year,
    MAX(year) AS last_year,
    ROUND(AVG(gender_pay_gap_percent), 2) AS average_pay_gap,
    ROUND(
        PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY gender_pay_gap_percent)::NUMERIC,
        2
    ) AS median_pay_gap,
    ROUND(MIN(gender_pay_gap_percent), 2) AS lowest_pay_gap,
    ROUND(MAX(gender_pay_gap_percent), 2) AS highest_pay_gap

FROM {{ ref('int_industry_pay_gap') }}

GROUP BY
    country,
    industry

ORDER BY average_pay_gap DESC
