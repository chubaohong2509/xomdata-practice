-- Xom Data · Classify products by sales velocity
-- Problem: https://xomdata.com/practice/medium-case-110
-- Solved: 2026-08-02

SELECT
    sp.name,
    sp.categories,
    SUM(gd.quantity) AS total_sold,

    CASE
        WHEN SUM(gd.quantity) >= 100 THEN 'Best Seller'
        WHEN SUM(gd.quantity) >= 50 THEN 'Average'
        ELSE 'Slow Mover'
    END AS classification,

    DENSE_RANK() OVER (
        PARTITION BY sp.categories
        ORDER BY SUM(gd.quantity) DESC
    ) AS rank_in_cat,

    ROUND(
        SUM(gd.quantity) * 100.0
        / SUM(SUM(gd.quantity)) OVER (PARTITION BY sp.categories),
        2
    ) AS pct_of_cat_total

FROM products sp
INNER JOIN transactions gd
    ON gd.product_id = sp.id

GROUP BY
    sp.name,
    sp.categories

ORDER BY
    sp.categories ASC,
    rank_in_cat ASC,
    sp.name ASC;
