SELECT
    format_date('%F', d) as id, 
    d                    as full_date,
    extract(YEAR FROM d) as year_,
    extract(WEEK FROM d) as year_week,
    extract(DAY FROM d) as year_day,
    extract(MONTH FROM d) as month_,
    --few more oolumns to build
FROM (
    SELECT 
    *
    FROM 
    unnest(generate_date_array('2014-01-01', '2050-01-01', interval 1 day)) as d
)