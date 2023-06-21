DROP TABLE IF EXISTS hai_result;

CREATE TABLE hai_result
(
  
  result_id INT NOT NULL
    COMMENT "Primary key",

  arm_accession                        VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the ARM_OR_COHORT table",

  biosample_accession                  VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the BIOSAMPLE table",
  
  comments VARCHAR(500)
    COMMENT "Free text to expand upon details",
  
  experiment_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the EXPERIMENT table",
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the EXPSAMPLE table",
  
  repository_accession VARCHAR(20)  
    COMMENT "Foreign key reference to a public repository",

  repository_name VARCHAR(50) 
    COMMENT "Name or identifier",
 
  study_accession                      VARCHAR(15)
    COMMENT "Foreign key reference to the STUDY table",
  
  study_time_collected                 FLOAT
    COMMENT "Reported value",
  
  study_time_collected_unit            VARCHAR(25)
    COMMENT "Standardized value in LK_TIME_UNIT table",
  
  subject_accession                    VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the SUBJECT table",
  
  unit_preferred VARCHAR(50)
    COMMENT "Standardized value in LK_UNIT_OF_MEASURE",
  
  unit_reported VARCHAR(200)
    COMMENT "Reported value",
  
  value_preferred FLOAT
    COMMENT "Standardized value",
  
  value_reported VARCHAR(50)
    COMMENT "Reported value",
  
  virus_strain_preferred VARCHAR(200)
    COMMENT "Standardized value in LK_VIRUS_STRAIN",
  
  virus_strain_reported VARCHAR(200)
    COMMENT "Reported value",

  workspace_id                         INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",

  
  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures results from a hemagglutination inhibition assay to quantify  virus or bacteria presence.";

