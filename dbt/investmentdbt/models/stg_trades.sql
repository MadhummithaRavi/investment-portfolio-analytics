SELECT
    trade_id,
    DATE(trade_date) AS trade_date,
    symbol,
    quantity,
    price
FROM {{ source('investment_analytics','raw_trades') }}