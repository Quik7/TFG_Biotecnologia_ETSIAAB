DROP TABLE IF EXISTS pcr_result;

CREATE TABLE pcr_result
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
  
  gene_id VARCHAR(10)
    COMMENT "NCBI Gene ID",
  
  gene_name VARCHAR(4000)
    COMMENT "Official gene name from the appropriate species specific nomenclature committee",
  
  analyte_accession VARCHAR(15)
    COMMENT "Foreign key reference to the LK_ANALYTE table.",
  
  gene_symbol_preferred VARCHAR(100)
    COMMENT "Preferred symbol from the lk_analyte table.",
  
  gene_symbol_reported VARCHAR(100)
    COMMENT "Official gene symbol from the appropriate species specific nomenclature committee",
  
  other_gene_accession VARCHAR(250)
    COMMENT "Official gene accession from the appropriate species specific nomenclature committee",

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
    COMMENT "Foreign key reference to the SUBJECT table",

  unit_preferred VARCHAR(200)
    COMMENT "Standardized value in LK_UNIT_OF_MEASURE",
  
  unit_reported VARCHAR(200)
    COMMENT "Reported unit",
  
  value_preferred FLOAT
    COMMENT "Standardized value",
  
  value_reported VARCHAR(50)
    COMMENT "Reported value",

  workspace_id                         INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",

  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures results from Real-time reverse-transcription PCR (qPCR) assays or other PCR assays.";
