DROP TABLE IF EXISTS neut_ab_titer_result;

CREATE TABLE neut_ab_titer_result
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
    COMMENT "Foreign keys reference to the SUBJECT table",

  unit_preferred VARCHAR(50)
    COMMENT "Standardized value in LK_UNIT_OF_MEASURE",
  
  unit_reported VARCHAR(200)
    COMMENT "Reported value",
  
  value_preferred FLOAT
    COMMENT "Standardized value",
  
  value_reported VARCHAR(50)
    COMMENT "Report value",
  
  virus_strain_preferred VARCHAR(200)
    COMMENT "Standardized value in LK_VIRUS_STRAIN",
  
  virus_strain_reported VARCHAR(200)
    COMMENT "Reported value",

  workspace_id                         INT
    COMMENT "Foreign key reference to WORKSPACE table",

  
  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures titer (inverse concentration) of antibody in a sample that can neutralize a challenge or target.";

CREATE INDEX idx_neut_arm_accession on neut_ab_titer_result(arm_accession);
CREATE INDEX idx_neut_biosample_accession on neut_ab_titer_result(biosample_accession);
CREATE INDEX idx_neut_experiment_accession on neut_ab_titer_result(experiment_accession);
CREATE INDEX idx_neut_expsample_accession on neut_ab_titer_result(expsample_accession);
CREATE INDEX idx_neut_study_accession on neut_ab_titer_result(study_accession);
CREATE INDEX idx_neut_subject_accession on neut_ab_titer_result(subject_accession);
CREATE INDEX idx__workspace on neut_ab_titer_result(workspace_id);
