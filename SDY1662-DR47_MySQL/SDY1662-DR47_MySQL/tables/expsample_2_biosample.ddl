DROP TABLE IF EXISTS expsample_2_biosample;

CREATE TABLE expsample_2_biosample
(
  biosample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to BIOSAMPLE table",
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPSAMPLE table",
  
  PRIMARY KEY (expsample_accession, biosample_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates BIOSAMPLE with EXPSAMPLE table records.";

