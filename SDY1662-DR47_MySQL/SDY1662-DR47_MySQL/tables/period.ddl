DROP TABLE IF EXISTS period;

CREATE TABLE period
(
  
  period_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  name VARCHAR(250)
    COMMENT "Name or identifier",
  
  order_number INT
    COMMENT "Order of event",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (period_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "ClinicalTrials.gov definition of study stages used for reporting participant flow through a study. Similar to CDISC Epoch. ";

