DROP TABLE IF EXISTS hla_typing_result;

CREATE TABLE hla_typing_result
(
  
  result_id INT NOT NULL
    COMMENT "Primary key",
  
  allele_1 VARCHAR(250)
    COMMENT "Name of the first HLA allele assayed in standard HLA nomenclature.",
  
  allele_2 VARCHAR(250)
    COMMENT "Name of the second HLA allele assayed in standard HLA nomenclature.",
  
  ancestral_population VARCHAR(250)
    COMMENT "Foreign key reference to LK_ANCESTRAL_POPULATION",

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
  
  locus_name VARCHAR(25)
    COMMENT "Standardized value in LK_LOCUS_NAME table",

  repository_accession VARCHAR(20)  
    COMMENT "Foreign key reference to a public repository",

  repository_name VARCHAR(50) 
    COMMENT "Name or identifier",
  
  result_set_id INT NOT NULL
    COMMENT "Primary Key",

  study_accession                      VARCHAR(15) NOT NULL
    COMMENT "Reference to the study in the STUDY table.",

  study_time_collected                 FLOAT
    COMMENT "Standardized value in LK_TIME_UNIT table",

  study_time_collected_unit            VARCHAR(25)
    COMMENT "Reported value",

  subject_accession                    VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the SUBJECT table",

  workspace_id                         INT
    COMMENT "Foreign key reference to WORKSPACE table",

  
  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures the expert determined pair of allele values for the HLA genes that were typed.";
