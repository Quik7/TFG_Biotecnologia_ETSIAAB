DROP TABLE IF EXISTS study_link;

CREATE TABLE study_link
(
  
  study_link_id INT NOT NULL
    COMMENT "Primary key",
  
  name VARCHAR(500)
    COMMENT "Name or idnentifier",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  type VARCHAR(50)
    COMMENT "Category",
  
  value VARCHAR(2000)
    COMMENT "Link to URL",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (study_link_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Links associated with a STUDY, such as ClinicalTrials.gov.";
