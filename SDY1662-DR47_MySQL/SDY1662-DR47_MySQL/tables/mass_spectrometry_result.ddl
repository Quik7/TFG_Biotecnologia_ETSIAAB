DROP TABLE IF EXISTS mass_spectrometry_result;

CREATE TABLE mass_spectrometry_result
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

  intensity FLOAT NOT NULL
    COMMENT "The intensity of the mass spectrometry result",

  retention_time FLOAT
    COMMENT "The retention time of the mass spectrometry result",

  retention_time_unit VARCHAR(25)
    COMMENT "The unit of time for the the retention time of the mass spectrometry result.",

  m_z_ratio FLOAT
    COMMENT "The ratio of mass to Z charge",

  z_charge VARCHAR(50)
    COMMENT "The Z charge of the mass spectrometry result",

  database_id_reported VARCHAR(50)
    COMMENT "The HMDB, PubChem, or RefMet ID associated with the result",

  database_id_preferred VARCHAR(25)
    COMMENT "The HMDB, PubChem, or RefMet ID associated with the result",

  mass_spectrometry_type VARCHAR(50) NOT NULL
    COMMENT "Metabolomics or Proteomics",

  metabolite_name_reported VARCHAR(255)
    COMMENT "The name of the reported metabolite used in the mass spectrometry",

  metabolite_name_preferred VARCHAR(255)
    COMMENT "The name of the reported metabolite used in the mass spectrometry",

  protein_name_reported VARCHAR(255)
    COMMENT "The name or ID of the protein",

  protein_name_preferred VARCHAR(255)
    COMMENT "The name or ID of the protein",

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
  
  workspace_id INT
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures results of Mass Spectrometry assays.";

