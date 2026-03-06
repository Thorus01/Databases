--T3-pat-dml.sql

/*(a)*/

DROP SEQUENCE official_seq;

CREATE SEQUENCE official_seq
START WITH 100 INCREMENT BY 10;

DROP SEQUENCE trip_seq;

CREATE SEQUENCE trip_seq
START WITH 100 INCREMENT BY 10;

/*(b)*/

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    official_seq.NEXTVAL,
    'Franklin',
    'Gateau',
    (SELECT cr_ioc_code FROM country_region WHERE cr_name = 'St Vincent and The Grenadines'),
    NULL
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1C4SDHCT9FC614231',
    'ALPHARD',
    TO_DATE('2000', 'yyyy'),
    5678,
    6,
    (SELECT vm_model_id FROM vehicle_model WHERE upper(vm_model) = 'ALPHARD')
);

COMMIT;

/*(c)*/

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    trip_seq.NEXTVAL,
    2,
    TO_DATE('30/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    NULL,
    TO_DATE('30/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE driver_licence = '55052a543210'),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT lang_iso_code FROM language WHERE lang_name = 'English'),
    (SELECT off_id FROM official WHERE off_given = 'Franklin' AND off_family = 'Gateau')
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    trip_seq.NEXTVAL,
    2,
    TO_DATE('30/07/2024 20:00', 'dd/mm/yyyy hh24:mi'),
    NULL,
    TO_DATE('30/07/2024 21:15', 'dd/mm/yyyy hh24:mi'),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE driver_licence = '55052a543210'),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT lang_iso_code FROM language WHERE lang_name = 'English'),
    (SELECT off_id FROM official WHERE off_given = 'Franklin' AND off_family = 'Gateau')
);

COMMIT;

/*(d)*/

UPDATE trip
SET
    trip_act_pickupdt = TO_DATE(
        '30/07/2024 12:30',
        'dd/mm/yyyy hh24:mi'
    ),
    trip_act_dropoffdt = TO_DATE(
        '30/07/2024 14:15',
        'dd/mm/yyyy hh24:mi'
    )
WHERE
    trip_int_pickupdt = TO_DATE('30/07/2024 12:30', 'dd/mm/yyyy hh24:mi')
    AND veh_vin = '1C4SDHCT9FC614231';

DELETE FROM trip
WHERE
    driver_id = (
        SELECT
            driver_id
        FROM
            driver
        WHERE
            driver_licence = '55052a543210'
    )
    AND trip_int_pickupdt > TO_DATE('30/07/2024 17:00', 'dd/mm/yyyy hh24:mi')
    AND trip_int_pickupdt < TO_DATE('30/07/2024 23:59', 'dd/mm/yyyy hh24:mi');

COMMIT;