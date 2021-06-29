SELECT * FROM public."Bach_Data"
SELECT * FROM university

SELECT ba.State, un.state, un.school_name
FROM university 
"State" =state


DROP TABLE public."Bach_Data"

CREATE TABLE "bach_data" (
    "state_num" INT   NOT NULL,
	"state" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "age_group" VARCHAR   NOT NULL,
    "science_and_engineering" INT   NOT NULL,
    "science_and_engineering_and_related_fields" INT   NOT NULL,
    "business" INT   NOT NULL,
    "education" INT   NOT NULL,
    "arts_humanities_and_others" INT   NOT NULL
);

ALTER TABLE "bach_data" ADD CONSTRAINT "fk_bach_data_state_state_num" FOREIGN KEY("state", "state_num")
REFERENCES "state_index" ("state", "state_num");

DROP TABLE public."bach_data"

CREATE TABLE "bach_data" (
    "state_num" INT   NOT NULL,
	"state" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "age_group" VARCHAR   NOT NULL,
    "science_and_engineering" INT   NOT NULL,
    "science_and_engineering_and_related_fields" INT   NOT NULL,
    "business" INT   NOT NULL,
    "education" INT   NOT NULL,
    "arts_humanities_and_others" INT   NOT NULL
);

SELECT * FROM bach_data
SELECT * FROM university

SELECT bach_data.state, bach_data.business, university.state
FROM university
JOIN bach_data ON university.state= bach_data.state


