DROP TABLE IF EXISTS treatment;

CREATE TABLE treatment
(
  
  treatment_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  amount_unit VARCHAR(50) DEFAULT 'Not Specified'
    COMMENT "Standardized unit in the LK_UNIT_OF_MEASURE table",
  
  amount_value VARCHAR(50) DEFAULT 'Not Specified'
    COMMENT "Reported amount of the treatment agent",
  
  comments VARCHAR(500)
    COMMENT "Free text to expand upon details",
  
  duration_unit VARCHAR(50) DEFAULT 'Not Specified'
    COMMENT "Standardized value in LK_TIME_UNIT table",
  
  duration_value VARCHAR(200) DEFAULT 'Not Specified'
    COMMENT "Reported duration of the treatment agent",
  
  name VARCHAR(100)
    COMMENT "Name or identifier",
  
  temperature_unit VARCHAR(50) DEFAULT 'Not Specified'
    COMMENT "Standardized value in LK_UNIT_OF_MEASURE",
  
  temperature_value VARCHAR(50) DEFAULT 'Not Specified'
    COMMENT "Reported value",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (treatment_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Action applied to a sample ex vivo by an agent (e.g. a compound), a temperature change, and or a duration of some action (e.g. a time course).";

