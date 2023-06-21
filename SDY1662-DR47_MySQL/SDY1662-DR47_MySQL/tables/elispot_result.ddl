DROP TABLE IF EXISTS elispot_result;

CREATE TABLE elispot_result
(
  
  result_id INT NOT NULL
    COMMENT "Primary key",
  
  analyte_accession VARCHAR(15)
    COMMENT "Foreign key reference to LK_ANALYTE",
  
  analyte_preferred VARCHAR(100)
    COMMENT "Preferred analyte name",
  
  analyte_reported VARCHAR(100) NOT NULL
    COMMENT "Reported analyte name",

  arm_accession VARCHAR(15)
    COMMENT "Foreign key reference to the ARM_OR_COHORT table",
  
  biosample_accession VARCHAR(15)
    COMMENT "Foreign key reference to the BIOSAMPLE table",
  
  cell_number_preferred FLOAT
    COMMENT "Standardized value",
  
  cell_number_reported VARCHAR(50)
    COMMENT "Reported value",
  
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
 
  spot_number_preferred FLOAT
    COMMENT "Standardized value",
  
  spot_number_reported VARCHAR(50)
    COMMENT "Reported value",

  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to the STUDY table",

  study_time_collected                 FLOAT
    COMMENT "Reported value",

  study_time_collected_unit            VARCHAR(25)
    COMMENT "Standardized value in LK_TIME_UNIT table",

  subject_accession VARCHAR(15)
    COMMENT "Foreign key reference to the SUBJECT table",

  workspace_id INT
    COMMENT "Foreign key reference to WORKSPACE table",

  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures results from enzyme-linked immunosorbent spot (ELISPOT) assay for monitoring immune responses in humans and animals.";

