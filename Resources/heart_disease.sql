DROP TABLE demographic
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
SELECT * FROM demographic;


DROP TABLE behavioural_data;
CREATE TABLE "behavioural_data" (
    "Patient_ID" int   NOT NULL,
    "HeartDisease" varchar   NOT NULL,
    "BMI" float  NOT NULL,
    "Smoking" varchar   NOT NULL,
    "AlcoholDrinking" varchar   NOT NULL,
    "Stroke" varchar   NOT NULL,
    "PhysicalHealth" float   NOT NULL,
    "MentalHealth" float   NOT NULL,
    "DiffWalking" varchar   NOT NULL,
    CONSTRAINT "pk_behavioural_data" PRIMARY KEY (
        "Patient_ID","HeartDisease"
     )
);

SELECT * FROM behavioural_data;

DROP TABLE CASCADE Disease_correlation;

CREATE TABLE "disease_correlation" (
    "Patient_ID" int   NOT NULL,
    "Diabetic" varchar   NOT NULL,
    "PhysicalActivity" varchar   NOT NULL,
    "GenHealth" varchar   NOT NULL,
    "SleepTime" float   NOT NULL,
    "Asthma" varchar   NOT NULL,
    "KidneyDisease" varchar   NOT NULL,
    "SkinCancer" varchar   NOT NULL,
	CONSTRAINT "pk_disease_correlation" PRIMARY KEY (
        "Patient_ID"
     )
);

ALTER TABLE "Disease_correlation" ADD CONSTRAINT "fk_Disease_correlation_Patient_ID" FOREIGN KEY("Patient_ID")
REFERENCES "demographic" ("Patient_ID");




SELECT * FROM disease_correlation;





