--T5-pat-select.sql

/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    l.locn_id,
    l.locn_name,
    l.locn_address,
    (
        SELECT
            locntype_description
        FROM
            location_type
        WHERE
            locntype_id = l.locntype_id
    ) AS locntype_description,
    count(*) AS "PICKUP/DROPOFF_COUNT"
FROM
    location l
    JOIN trip t
    ON t.pickup_locn_id = l.locn_id
WHERE
    t.trip_act_dropoffdt IS NOT NULL
GROUP BY
    locn_id,
    locn_name,
    locn_address,
    locntype_id
ORDER BY
    locn_id;

/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    driver_id,
    driver_given
    || ' '
    || driver_family AS fullname,
    TO_CHAR(sum(
        CASE
            WHEN trip_int_pickupdt >= to_date('01/08/2024 00:00', 'dd/mm/yyyy hh24:mi')
            AND trip_int_pickupdt <= to_date('07/08/2024 23:59', 'dd/mm/yyyy hh24:mi') THEN
                1
        END) * 45.52, '$9990.90') AS TOTAL_PERIOD_PAYMENT
FROM
    driver
    NATURAL JOIN trip
GROUP BY
    driver_id,
    driver_given
    || ' '
    || driver_family
ORDER BY
    driver_id;