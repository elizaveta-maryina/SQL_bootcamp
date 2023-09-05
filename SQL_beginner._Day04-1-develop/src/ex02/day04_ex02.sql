CREATE OR REPLACE VIEW v_generated_dates AS
    SELECT generated_date FROM
    (SELECT generated_date:: DATE FROM generate_series('2022-01-01', '2022-01-31', '1 day':: interval) AS generated_date)
    AS dates ORDER BY 1;