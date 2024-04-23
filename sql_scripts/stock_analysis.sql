
SELECT *, EXTRACT(YEAR FROM date_of_trade) as trade_year, 
EXTRACT(MONTH FROM date_of_trade) as trade_month,
EXTRACT(DAYOFWEEK FROM date_of_trade) as trade_day_of_week,
EXTRACT(WEEK FROM date_of_trade) as trade_week_of_year,
EXTRACT(DAY FROM date_of_trade) as trade_day_of_month,
EXTRACT(DAYOFYEAR FROM date_of_trade) as trade_day_of_year
 FROM `dataclass-415513.staging.all_historical_stock_data`
