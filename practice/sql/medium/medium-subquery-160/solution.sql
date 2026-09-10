-- Xom Data · Low-activity users
-- Problem: https://xomdata.com/practice/medium-subquery-160
-- Solved: 2026-09-09

WITH bang AS (
    SELECT 
        u.user_name,
        COUNT(o.id) AS order_count,
        SUM(o.value) AS total_value,
        AVG(o.value) AS avg_order_value
    FROM users u
    LEFT JOIN orders o 
        ON o.user_id = u.id
    GROUP BY u.user_name
),

bang1 AS (
    SELECT 
        *,
        AVG(total_value) OVER () AS avg_total_value
    FROM bang
),

bang2 AS (
    SELECT 
        user_name,
        order_count,
        total_value,
        avg_order_value,
        CASE 
            WHEN total_value IS NULL THEN 'Inactive'
            WHEN total_value < avg_total_value THEN 'Low'
            ELSE 'Normal'
        END AS tier
    FROM bang1
)

SELECT 
    user_name,
    order_count,
    total_value,
    avg_order_value,
    tier,
    RANK() OVER (
        ORDER BY total_value ASC
    ) AS activity_rank,
    ROUND(
        PERCENT_RANK() OVER (
            ORDER BY total_value ASC
        ) * 100.00,
        2
    ) AS pct_above_peers
FROM bang2
WHERE tier IN ('Inactive', 'Low')
ORDER BY 
    activity_rank ASC,
    user_name ASC;
