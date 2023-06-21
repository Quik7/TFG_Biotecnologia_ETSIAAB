DROP TABLE IF EXISTS elisa_result;

CREATE TABLE elisa_result
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
    COMMENT "Foreign key reference to ARM_OR_COHORT table",

  biosample_accession VARCHAR(15)
    COMMENT "Foreign key reference to BIOSAMPLE table",

  comments VARCHAR(500)
    COMMENT "Free text to expand upon details",
  
  experiment_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPERIMENT table",
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPSAMPLE table",

  repository_accession VARCHAR(20)
    COMMENT "Foreign key reference to a public repository",

  repository_name VARCHAR(50)
    COMMENT "Name or identifier",
  
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to STUDY table",

  study_time_collected                 FLOAT
    COMMENT "Reported value",

  study_time_collected_unit            VARCHAR(25)
    COMMENT "Standardized value in LK_TIME_UNIT table",
  
  subject_accession VARCHAR(15)
    COMMENT "Foreign key reference to SUBJECT table",
  
  unit_preferred VARCHAR(50)
    COMMENT "Standardized value in LK_UNIT_OF_MEASURE",
  
  unit_reported VARCHAR(200)
    COMMENT "Reported value",
  
  value_preferred FLOAT
    COMMENT "Standardized value",
  
  value_reported VARCHAR(50)
    COMMENT "Reported value",

  workspace_id INT
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures results of ELISA assays or simplified version of MBAA or Luminex assays.";

CREATE INDEX idx_elisa_study_accession on elisa_result(study_accession);
CREATE INDEX idx_elisa_arm_accession on elisa_result(arm_accession);
CREATE INDEX idx_elisa_biosample_accession on elisa_result(biosample_accession);
CREATE INDEX idx_elisa_experiment_accession on elisa_result(experiment_accession);
CREATE INDEX idx_elisa_expsample_accession on elisa_result(expsample_accession);
CREATE INDEX idx_elisa_subject_accession on elisa_result(subject_accession);
CREATE INDEX idx_elisa_workspace on elisa_result(workspace_id);
