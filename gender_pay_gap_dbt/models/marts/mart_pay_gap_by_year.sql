-- Calculate annual gender pay gap statistics across individual industries

SELECT
    country,
    year,
    COUNT(DISTINCT industry) AS industry_count,
    COUNT(*) AS observation_count,
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
    year

ORDER BY year
