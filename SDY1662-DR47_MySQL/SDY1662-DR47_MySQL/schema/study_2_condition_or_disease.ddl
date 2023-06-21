DROP TABLE IF EXISTS study_2_condition_or_disease;

CREATE TABLE study_2_condition_or_disease
(
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  condition_reported VARCHAR(550) NOT NULL
    COMMENT "Reported condition or disease",
  
  condition_preferred VARCHAR(250)
    COMMENT "Preferred name for condition or disease",
  
  PRIMARY KEY (study_accession, condition_reported)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates STUDY and Condition or Disease.";
