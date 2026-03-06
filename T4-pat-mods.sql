--T4-pat-mods.sql

/*(a)*/

ALTER TABLE official
    ADD (
        off_role VARCHAR(13) DEFAULT 'General' NOT NULL,
        CONSTRAINT off_role_chk CHECK (off_role IN ('General', 'Administrator', 'Head Coach', 'Coach', 'Physician'))
    );

UPDATE official
SET
    off_role = 'Administrator'
WHERE
    off_cdm IS NULL;

COMMIT;

SELECT
    off_role
FROM
    official;

desc OFFICIAL;

/*(b)*/

DROP SEQUENCE complaint_category_seq;

CREATE SEQUENCE complaint_category_seq
START WITH 1 INCREMENT BY 1;

DROP TABLE complaint;

DROP TABLE complaint_category;

CREATE TABLE complaint_category (
    com_cat_id NUMBER(4) NOT NULL,
    com_cat_name VARCHAR(30) NOT NULL,
    com_cat_pts NUMBER(2) NOT NULL
);

COMMENT ON COLUMN complaint_category.com_cat_id IS
    'Id of complaint category';

COMMENT ON COLUMN complaint_category.com_cat_name IS
    'Name of complaint';

COMMENT ON COLUMN complaint_category.com_cat_pts IS
    'Number of demerit points for the complaint';

ALTER TABLE complaint_category
    ADD CONSTRAINT complaint_category_pk PRIMARY KEY (
        com_cat_id
    );

INSERT INTO complaint_category (
    com_cat_id,
    com_cat_name,
    com_cat_pts
) VALUES (
    complaint_category_seq.NEXTVAL,
    'late arrival',
    1
);

INSERT INTO complaint_category (
    com_cat_id,
    com_cat_name,
    com_cat_pts
) VALUES (
    complaint_category_seq.NEXTVAL,
    'rude behaviour',
    2
);

INSERT INTO complaint_category (
    com_cat_id,
    com_cat_name,
    com_cat_pts
) VALUES (
    complaint_category_seq.NEXTVAL,
    'poor driving',
    2
);

INSERT INTO complaint_category (
    com_cat_id,
    com_cat_name,
    com_cat_pts
) VALUES (
    complaint_category_seq.NEXTVAL,
    'failing to assist',
    1
);

COMMIT;

DROP SEQUENCE complaint_seq;

CREATE SEQUENCE complaint_seq
START WITH 1 INCREMENT BY 1;

CREATE TABLE complaint (
    com_id NUMBER(4) NOT NULL,
    off_id NUMBER(4) NOT NULL,
    com_cat_id NUMBER(4) NOT NULL,
    com_dt DATE NOT NULL,
    com_comment VARCHAR(100),
    com_valid CHAR(4),
    trip_id NUMBER(4) NOT NULL
);

ALTER TABLE complaint
    ADD CONSTRAINT com_valid_chk CHECK (
        com_valid IN ('TRUE', 'FALSE')
    );

COMMENT ON COLUMN complaint.com_id IS
    'complaint identifier';

COMMENT ON COLUMN complaint.off_id IS
    'Id of the official who is making the complaint';

COMMENT ON COLUMN complaint.com_cat_id IS
    'Complaint category id';

COMMENT ON COLUMN complaint.com_dt IS
    'Date and time of complaint';

COMMENT ON COLUMN complaint.com_comment IS
    'Detailed comment of complaint';

COMMENT ON COLUMN complaint.com_valid IS
    'Represents whether the complaint is valid';

COMMENT ON COLUMN complaint.trip_id IS
    'Id of the trip being complained about';

ALTER TABLE complaint
    ADD CONSTRAINT complaint_pk PRIMARY KEY (
        com_id
    );

ALTER TABLE complaint
    ADD CONSTRAINT complaintcategory_com_cat_id_fk FOREIGN KEY (
        com_cat_id
    )
        REFERENCES complaint_category (
            com_cat_id
        );

ALTER TABLE complaint
    ADD CONSTRAINT trip_trip_id_fk FOREIGN KEY (
        trip_id
    )
        REFERENCES trip (
            trip_id
        );

COMMIT;