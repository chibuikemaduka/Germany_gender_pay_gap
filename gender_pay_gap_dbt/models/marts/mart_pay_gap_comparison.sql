-- Compare each industry's gender pay gap in 2007 and 2024
-- Retain industries with missing baseline values for transparency

WITH baseline AS (
    SELECT
        country,
        industry,
        gender_pay_gap_percent AS gap_2007
    FROM {{ ref('int_industry_pay_gap') }}
    WHERE year = 2007
),

latest AS (
    SELECT
        country,
        industry,
        gender_pay_gap_percent AS gap_2024
    FROM {{ ref('int_industry_pay_gap') }}
    WHERE year = 2024
)

SELECT
    latest.country,
    latest.industry,
    baseline.gap_2007,
    latest.gap_2024,

    -- Negative values indicate a reduction in the pay gap
    ROUND(
        latest.gap_2024 - baseline.gap_2007,
        2
    ) AS change_percentage_points

FROM latest

LEFT JOIN baseline
    ON latest.country = baseline.country
    AND latest.industry = baseline.industry

ORDER BY change_percentage_points ASC NULLS LAST
