-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "State_Id_Table" (
    "state" VARCHAR   NOT NULL,
    "state_num" INT   NOT NULL,
    CONSTRAINT "pk_State_Id_Table" PRIMARY KEY (
        "state","state_num"
     )
);

CREATE TABLE "De-Aggregated_table" (
    "state" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "age_group" VARCHAR   NOT NULL,
    "science_and_engineering" INT   NOT NULL,
    "science_and_engineering_and_related_fields" INT   NOT NULL,
    "business" INT   NOT NULL,
    "education" INT   NOT NULL,
    "arts_humanities_and_others" INT   NOT NULL,
    "state_num" INT   NOT NULL
);

ALTER TABLE "De-Aggregated_table" ADD CONSTRAINT "fk_De-Aggregated_table_state_state_num" FOREIGN KEY("state", "state_num")
REFERENCES "State_Id_Table" ("state", "state_num");

