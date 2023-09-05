CREATE TABLE person_audit
(   created    timestamp with time zone default now() NOT NULL,
    type_event CHAR(1) NOT NULL        DEFAULT 'I',
    row_id     BIGINT  NOT NULL,
    name       VARCHAR NOT NULL,
    age        INTEGER NOT NULL ,
    gender     VARCHAR NOT NULL,
    address    VARCHAR NOT NULL,
    constraint ch_type_event check (type_event = 'I' or type_event = 'U' or type_event = 'D')
);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit()
RETURNS TRIGGER AS $person_audits$
    BEGIN IF (TG_OP = 'INSERT') THEN
    INSERT INTO person_audit SELECT now(), 'I', NEW.*;
    END IF;
    RETURN NULL;
END;
    $person_audits$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit AFTER INSERT ON person
FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address)
VALUES (10, 'Damir', 22, 'male', 'Irkutsk');