SELECT
    symbol,
    SUM(quantity) AS total_shares,
    SUM(quantity * price) AS portfolio_value
FROM {{ ref('stg_trades') }}
GROUP BY symbol