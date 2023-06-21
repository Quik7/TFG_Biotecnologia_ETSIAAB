DROP TABLE IF EXISTS biosample_2_treatment;

CREATE TABLE biosample_2_treatment
(
  
  biosample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to BIOSAMPLE table",
  
  treatment_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to TREATMENT table",
  
  PRIMARY KEY (biosample_accession, treatment_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates BIOSAMPLE with TREATMENT table records.";

