DROP TABLE IF EXISTS inclusion_exclusion;

CREATE TABLE inclusion_exclusion
(
  
  criterion_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  criterion VARCHAR(750)
    COMMENT "May be in the form of a question or a statement",
  
  criterion_category VARCHAR(40)
    COMMENT "Group of criterion",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (criterion_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Defines the criteria by which subjects are excluded from or included in a study.";
