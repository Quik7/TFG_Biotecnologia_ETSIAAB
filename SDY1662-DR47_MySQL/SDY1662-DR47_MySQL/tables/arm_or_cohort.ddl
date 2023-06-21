DROP TABLE IF EXISTS arm_or_cohort;

CREATE TABLE arm_or_cohort
(
  
  arm_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  description VARCHAR(4000)
    COMMENT "Freee text to expand upon details",
  
  name VARCHAR(126)
    COMMENT "Name or identifier",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to STUDY table",
  
  type_reported VARCHAR(40)
    COMMENT "Category submitted",
  
  type_preferred VARCHAR(40)
    COMMENT "Category harmonized",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (arm_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "A subset of the subjects in a study.";

