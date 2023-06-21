DROP TABLE IF EXISTS rna_seq_result;

CREATE TABLE rna_seq_result
(
  
  result_id INT NOT NULL
    COMMENT "Primary key",
  
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

  reference_repository_name VARCHAR(50)
    COMMENT "The name of the public repository supporting the ID",

  reference_transcript_id VARCHAR(100)
    COMMENT "The NCBI/Ensembl gene name/symbol representing the transcript",

  repository_accession VARCHAR(20)
    COMMENT "Foreign key reference to a public repository",

  repository_name VARCHAR(50)
    COMMENT "Name or identifier",

  result_unit_preferred VARCHAR(50)
    COMMENT "Standardized unit",
  
  result_unit_reported VARCHAR(100)
    COMMENT "Reported unit",
  
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to STUDY table",

  study_time_collected FLOAT
    COMMENT "Reported value",

  study_time_collected_unit VARCHAR(25)
    COMMENT "Standardized value in LK_TIME_UNIT table",
  
  subject_accession VARCHAR(15)
    COMMENT "Foreign key reference to SUBJECT table",
  
  transcript_type_preferred VARCHAR(50)
    COMMENT "Standardized transcript type",
  
  transcript_type_reported VARCHAR(100)
    COMMENT "Reported transcript type",
  
  value_preferred FLOAT
    COMMENT "Value",
  
  value_reported VARCHAR(50) NOT NULL
    COMMENT "Value",
  
  workspace_id INT
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures results of rna seq assays.";

CREATE INDEX idx_rna_seq_study_accession on rna_seq_result(study_accession);
CREATE INDEX idx_rna_seq_arm_accession on rna_seq_result(arm_accession);
CREATE INDEX idx_rna_seq_biosample_accession on rna_seq_result(biosample_accession);
CREATE INDEX idx_rna_seq_experiment_accession on rna_seq_result(experiment_accession);
CREATE INDEX idx_rna_seq_expsample_accession on rna_seq_result(expsample_accession);
CREATE INDEX idx_rna_seq_subject_accession on rna_seq_result(subject_accession);
CREATE INDEX idx_rna_seq_workspace on rna_seq_result(workspace_id);
