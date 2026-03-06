--T6-pat-json.sql

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE 
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    JSON_OBJECT ('_id' VALUE driver_id, 'name' VALUE DRIVER_GIVEN,
    'licence_num' VALUE DRIVER_LICENCE,
    'no_of_trips' VALUE (SELECT COUNT(*) FROM DRIVER NATURAL JOIN TRIP),
    'suspended' VALUE DRIVER_SUSPENDED,
    );