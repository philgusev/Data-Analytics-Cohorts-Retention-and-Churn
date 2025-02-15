
SELECT
DATE_TRUNC (subscription_start, WEEK) AS subscription_start,
COUNT (1) AS total_subscriptions,
COUNTIF (COALESCE (subscription_end, '2099-12-31') > DATE_ADD (DATE_TRUNC (subscription_start, WEEK), INTERVAL 1 WEEK)) AS subscriptions_week1,
COUNTIF (COALESCE (subscription_end, '2099-12-31') > DATE_ADD (DATE_TRUNC (subscription_start, WEEK), INTERVAL 2 WEEK)) AS subscriptions_week2,
COUNTIF (COALESCE (subscription_end, '2099-12-31') > DATE_ADD (DATE_TRUNC (subscription_start, WEEK), INTERVAL 3 WEEK)) AS subscriptions_week3,
COUNTIF (COALESCE (subscription_end, '2099-12-31') > DATE_ADD (DATE_TRUNC (subscription_start, WEEK), INTERVAL 4 WEEK)) AS subscriptions_week4,
COUNTIF (COALESCE (subscription_end, '2099-12-31') > DATE_ADD (DATE_TRUNC (subscription_start, WEEK), INTERVAL 5 WEEK)) AS subscriptions_week5,
COUNTIF (COALESCE (subscription_end, '2099-12-31') > DATE_ADD (DATE_TRUNC (subscription_start, WEEK), INTERVAL 6 WEEK)) AS subscriptions_week6
FROM
`turing_data_analytics.subscriptions`
GROUP BY
subscription_start