-- Database Name: ETLProjectG5

CREATE TABLE Countries(
	Country_ID int NOT NULL,
	Country_Name varchar(100) NOT NULL
 CONSTRAINT PK_Countries PRIMARY KEY (Country_ID),
 CONSTRAINT UQ_Country_Name UNIQUE(Country_Name)
);

CREATE TABLE HappinessIndex(
	Country_ID smallint NOT NULL,
	Assessment_Year smallint NOT NULL,
	Life_Ladder numeric(10, 5),
	Log_GDP_per_capita numeric(10, 5),
	Social_support numeric(10, 5),
	Healthy_life_expectancy_at_birth numeric(10, 5),
	Freedom_to_make_life_choices numeric(10, 5),
	Generosity numeric(10, 5),
	Perceptions_of_corruption numeric(10, 5),
	Positive_affect numeric(10, 5),
	Negative_affect numeric(10, 5),
	CONSTRAINT PK_CountriesYear UNIQUE (Country_ID, Assessment_Year); 
);

CREATE INDEX ID_HappinessIndex ON HappinessIndex (Country_ID, Assessment_Year);

ALTER TABLE HappinessIndex ADD Ladder_score_in_Dystopia numeric(10, 5);

-- Anupama's part
ALTER TABLE HappinessIndex ADD HDI_Index numeric(10, 5);

-- Jyothshna's part
ALTER TABLE HappinessIndex ADD Avg_Tmp numeric(10, 5);

-- Kendrik's part
ALTER TABLE HappinessIndex ADD [Total Cases] int;

-- Prit's part
ALTER TABLE HappinessIndex ADD Population numeric(15, 5);