-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "demographic" (
    "Patient_ID" int   NOT NULL,
    "HeartDisease" varchar   NOT NULL,
    "Sex" varchar   NOT NULL,
    "AgeCategory" varchar   NOT NULL,
    "Race" varchar   NOT NULL,
    CONSTRAINT "pk_demographic" PRIMARY KEY (
        "Patient_ID"
     )
);

CREATE TABLE "behavioural_data" (
    "Patient_ID" int   NOT NULL,
    "HeartDisease" varchar   NOT NULL,
    "BMI" int   NOT NULL,
    "Smoking" varchar   NOT NULL,
    "AlcoholDrinking" varchar   NOT NULL,
    "Stroke" varchar   NOT NULL,
    "PhysicalHealth" int   NOT NULL,
    "MentalHealth" int   NOT NULL,
    "DiffWalking" varchar   NOT NULL,
    CONSTRAINT "pk_behavioural_data" PRIMARY KEY (
        "Patient_ID","HeartDisease"
     )
);

CREATE TABLE "Disease_correlation" (
    "Patient_ID" int   NOT NULL,
    "Diabetic" varchar   NOT NULL,
    "PhysicalActivity" varchar   NOT NULL,
    "GenHealth" varchar   NOT NULL,
    "SleepTime" int   NOT NULL,
    "Asthma" varchar   NOT NULL,
    "KidneyDisease" varchar   NOT NULL,
    "SkinCancer" varchar   NOT NULL,
    CONSTRAINT "pk_Disease_correlation" PRIMARY KEY (
        "Patient_ID"
     )
);

ALTER TABLE "behavioural_data" ADD CONSTRAINT "fk_behavioural_data_Patient_ID_HeartDisease" FOREIGN KEY("Patient_ID", "HeartDisease")
REFERENCES "demographic" ("Patient_ID", "HeartDisease");

ALTER TABLE "Disease_correlation" ADD CONSTRAINT "fk_Disease_correlation_Patient_ID" FOREIGN KEY("Patient_ID")
REFERENCES "demographic" ("Patient_ID");

