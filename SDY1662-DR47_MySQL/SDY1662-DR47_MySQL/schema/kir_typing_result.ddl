DROP TABLE IF EXISTS kir_typing_result;

CREATE TABLE kir_typing_result
(
  
  result_id INT NOT NULL
    COMMENT "Primary key",
  
  allele_1 VARCHAR(250)
    COMMENT "Name of the KIR allele assayed in standard KIR nomenclature",
  
  allele_2 VARCHAR(250)
    COMMENT "Name of the KIR allele assayed in standard KIR nomenclature",
  
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

  kir_haplotype VARCHAR(250) NOT NULL
    COMMENT "",

  repository_accession VARCHAR(20)  
    COMMENT "Foreign key reference to a public repository",

  repository_name VARCHAR(50) 
    COMMENT "Name or identifier",
 
  study_accession                      VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",

  study_time_collected                 FLOAT
    COMMENT "Reported value",

  study_time_collected_unit            VARCHAR(25)
    COMMENT "Standardized value in LK_TIME_UNIT table",

  subject_accession                    VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the  SUBJECT table",

  workspace_id                         INT
    COMMENT "Foreign key reference to WORKSPACE table",

  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures the expert determined allele values for the KIR genes that were typed.";

CREATE INDEX idx_kir_arm_accession on kir_typing_result(arm_accession);
CREATE INDEX idx_kir_biosample_accession on kir_typing_result(biosample_accession);
CREATE INDEX idx_kir_experiment_accession on kir_typing_result(experiment_accession);
CREATE INDEX idx_kir_expsample_accession on kir_typing_result(expsample_accession);
CREATE INDEX idx_kir_subject_accession on kir_typing_result(subject_accession);
CREATE INDEX idx_kir_study_accession on kir_typing_result(study_accession);
CREATE INDEX idx_kir_workspace on kir_typing_result(workspace_id);

