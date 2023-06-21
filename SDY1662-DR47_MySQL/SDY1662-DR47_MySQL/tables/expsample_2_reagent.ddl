DROP TABLE IF EXISTS expsample_2_reagent;

CREATE TABLE expsample_2_reagent
(
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPSAMPLE table",
  
  reagent_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to REAGENT table",
  
  PRIMARY KEY (expsample_accession, reagent_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates EXPSAMPLE with REAGENT table records.";

