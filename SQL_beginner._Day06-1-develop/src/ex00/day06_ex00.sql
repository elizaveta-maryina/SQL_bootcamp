CREATE TABLE person_discounts (
    id bigint primary key,
    person_id bigint not null ,
    pizzeria_id bigint not null ,
    CONSTRAINT fk_person_discounts_person_id foreign key  (person_id) references person(id),
    CONSTRAINT fk_person_discounts_pizzeria_id foreign key  (pizzeria_id) references person(id),
    discount numeric not null default 1
);