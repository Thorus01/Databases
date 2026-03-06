--T2-pat-insert.sql

--------------------------------------
--INSERT INTO official
--------------------------------------

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    12,
    'silly',
    'staple',
    'LES',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    11,
    '',
    '',
    'LES',
    12
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    76,
    'huudjkdhfueirkdlf;[]\/.,mncbdh',
    'qyausid[]\mbha.,.hgjuetriofpdi',
    'CIV',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    0,
    'dsjfu',
    'o238946324jfj',
    'CIV',
    76
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    21,
    'alegra',
    'udosien',
    'AUS',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    54,
    'brian',
    'griffin',
    'AUS',
    21
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    1,
    'sbuifemf',
    'yap',
    'IRL',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    29,
    'ariel',
    'jack',
    'IRL',
    1
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    99,
    'dave',
    'pan',
    'GER',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    72,
    'eyinsadn',
    'nassau',
    'GER',
    99
);

--------------------------------------
--INSERT INTO vehicle
--------------------------------------

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'uebdikm12',
    '123456',
    TO_DATE('1997', 'yyyy'),
    123,
    10,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '0',
    '0',
    TO_DATE('2000', 'yyyy'),
    0,
    0,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'djfuey73648y',
    '54d6fgt',
    TO_DATE('1991', 'yyyy'),
    111111,
    7,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '123abc',
    'qwert',
    TO_DATE('2017', 'yyyy'),
    7865,
    1,
    4
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'ieuf456',
    '2934',
    TO_DATE('2013', 'yyyy'),
    123,
    5,
    5
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'j8rj3',
    'qb1',
    TO_DATE('2021', 'yyyy'),
    4563,
    7,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'iife3',
    '98a',
    TO_DATE('2012', 'yyyy'),
    9876,
    4,
    6
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'ueihjii3',
    'dave1',
    TO_DATE('2006', 'yyyy'),
    89789,
    6,
    7
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '6273jnde847',
    '8yu9yp',
    TO_DATE('1989', 'yyyy'),
    9000,
    2,
    8
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    'ihjueijn33',
    'ieop2',
    TO_DATE('2022', 'yyyy'),
    78776,
    4,
    6
);

--------------------------------------
--INSERT INTO trip
--------------------------------------

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
    5,
    3,
    TO_DATE('21/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    'iife3',
    2001,
    101,
    102,
    'ab',
    76
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
    1,
    0,
    TO_DATE('28/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    'ieuf456',
    2005,
    103,
    102,
    'am',
    21
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
    8,
    8,
    TO_DATE('28/07/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    'djfuey73648y',
    2004,
    103,
    102,
    'bn',
    76
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
    45,
    2,
    TO_DATE('31/07/2024 20:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('31/07/2024 20:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('01/08/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('01/08/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    'uebdikm12',
    2003,
    103,
    104,
    'zh',
    11
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
    21,
    1,
    TO_DATE('05/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('05/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('06/08/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('06/08/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    'uebdikm12',
    2003,
    103,
    104,
    'zh',
    11
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
    27,
    4,
    TO_DATE('22/07/2024 17:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 18:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 09:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    'uebdikm12',
    2003,
    103,
    104,
    'zh',
    11
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
    13,
    3,
    TO_DATE('03/08/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('03/08/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('03/08/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('03/08/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    'uebdikm12',
    2003,
    103,
    104,
    'zh',
    11
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
    9,
    7,
    TO_DATE('14/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('14/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('14/08/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('14/08/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    '0',
    2004,
    104,
    105,
    'da',
    76
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
    63,
    5,
    TO_DATE('01/08/2024 06:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('01/08/2024 06:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('01/08/2024 08:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('01/08/2024 08:00', 'dd/mm/yyyy hh24:mi'),
    '0',
    2004,
    104,
    105,
    'da',
    76
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
    37,
    3,
    TO_DATE('10/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('10/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('11/08/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('11/08/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    '0',
    2004,
    104,
    105,
    'da',
    76
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
    55,
    2,
    TO_DATE('12/08/2024 18:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('12/08/2024 18:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('12/08/2024 19:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('12/08/2024 19:00', 'dd/mm/yyyy hh24:mi'),
    '0',
    2004,
    104,
    105,
    'da',
    76
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
    10,
    7,
    TO_DATE('25/07/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 22:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 22:00', 'dd/mm/yyyy hh24:mi'),
    '123abc',
    2007,
    105,
    106,
    'en',
    0
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
    11,
    6,
    TO_DATE('23/07/2024 00:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 00:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 02:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 02:00', 'dd/mm/yyyy hh24:mi'),
    '123abc',
    2007,
    105,
    106,
    'en',
    0
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
    20,
    6,
    TO_DATE('13/08/2024 22:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('13/08/2024 22:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('13/08/2024 23:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('13/08/2024 23:00', 'dd/mm/yyyy hh24:mi'),
    '123abc',
    2007,
    105,
    106,
    'en',
    0
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
    0,
    4,
    TO_DATE('28/07/2024 05:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 05:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 06:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 06:00', 'dd/mm/yyyy hh24:mi'),
    '123abc',
    2007,
    105,
    106,
    'en',
    0
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
    26,
    2,
    TO_DATE('30/07/2024 06:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 06:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 08:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 08:00', 'dd/mm/yyyy hh24:mi'),
    '123abc',
    2008,
    106,
    107,
    'fj',
    21
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
    61,
    6,
    TO_DATE('02/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('02/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('02/08/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('02/08/2024 16:00', 'dd/mm/yyyy hh24:mi'),
    'j8rj3',
    2008,
    106,
    107,
    'fj',
    21
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
    72,
    3,
    TO_DATE('08/08/2024 19:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('08/08/2024 19:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('08/08/2024 21:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('08/08/2024 21:00', 'dd/mm/yyyy hh24:mi'),
    'j8rj3',
    2008,
    106,
    107,
    'fj',
    21
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
    44,
    1,
    TO_DATE('13/08/2024 20:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('13/08/2024 20:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('13/08/2024 22:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('13/08/2024 22:00', 'dd/mm/yyyy hh24:mi'),
    'j8rj3',
    2008,
    106,
    107,
    'fj',
    21
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
    19,
    3,
    TO_DATE('21/08/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/08/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    'j8rj3',
    2009,
    107,
    108,
    'gv',
    99
);


COMMIT;