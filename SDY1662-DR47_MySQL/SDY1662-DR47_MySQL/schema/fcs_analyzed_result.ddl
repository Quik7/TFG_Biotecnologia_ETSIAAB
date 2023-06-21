DROP TABLE IF EXISTS fcs_analyzed_result;

CREATE TABLE fcs_analyzed_result
(
  
  result_id INT NOT NULL
    COMMENT "Primary key",

  arm_accession VARCHAR(15)
    COMMENT "Foreign key reference to the ARM_OR_COHORT table",

  biosample_accession VARCHAR(15)
    COMMENT "Foreign key reference to the BIOSAMPLE table",

  comments VARCHAR(500)
    COMMENT "Free text to expand upon details",
  
  experiment_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the EXPERIMENT table",
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the EXPSAMPLE table",
  
  parent_population_preferred VARCHAR(150)
    COMMENT "Standarized name of base or parent population preferred term for population percentage calculation",
  
  parent_population_reported VARCHAR(150)
    COMMENT "Reported name of base or parent population preferred term for population percentage calculation ",
  
  population_defnition_preferred VARCHAR(150)
    COMMENT "Standardized name or idenitifier",
  
  population_defnition_reported VARCHAR(150)
    COMMENT "Reported name or identifier",
  
  population_name_preferred VARCHAR(150)
    COMMENT "Standardized name or idenitifier",
  
  population_name_reported VARCHAR(150)
    COMMENT "Reported name or identifier",
  
  population_stat_unit_preferred VARCHAR(50)
    COMMENT "Standardized value in LK_UNIT_of_MEASURE table",
  
  population_stat_unit_reported VARCHAR(100)
    COMMENT "Reported name or identifier",
  
  population_statistic_preferred FLOAT
    COMMENT "Standardized value",
  
  population_statistic_reported VARCHAR(50)
    COMMENT "Reported value",

  population_name_modifier VARCHAR(150)
    COMMENT "The value after the ampersand in the alternate population format",
  
  parent_population_modifier VARCHAR(150)
    COMMENT "The value after the ampersand in the alternate population format",

  repository_accession VARCHAR(20)  
    COMMENT "Foreign key reference to a public repository",

  repository_name VARCHAR(50) 
    COMMENT "Name or identifier",
 
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to the STUDY table",

  study_time_collected                 FLOAT
    COMMENT "Reported value",

  study_time_collected_unit            VARCHAR(25)
    COMMENT "Standardized value in LK_TIME_UNIT table",

  subject_accession VARCHAR(15)
    COMMENT "Foreign key reference to the SUBJECT table",

  workspace_file_info_id INT
    COMMENT "Foreign key reference to FILE_INFO table",

  workspace_id INT
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Stores the analysis results of .fcs file contents and includes measures of population cell number, gating definitions and other statistics.";

CREATE INDEX idx_fcs_analyzed_study_accession on fcs_analyzed_result(study_accession);
CREATE INDEX idx_fcs_analyzed_arm_accession on fcs_analyzed_result(arm_accession);
CREATE INDEX idx_fcs_analyzed_biosample_accession on fcs_analyzed_result(biosample_accession);
CREATE INDEX idx_fcs_analyzed_experiment_accession on fcs_analyzed_result(experiment_accession);
CREATE INDEX idx_fcs_analyzed_expsample_accession on fcs_analyzed_result(expsample_accession);
CREATE INDEX idx_fcs_analyzed_subject_accession on fcs_analyzed_result(subject_accession);
CREATE INDEX idx_fcs_analyzed_workspace on fcs_analyzed_result(workspace_id);
