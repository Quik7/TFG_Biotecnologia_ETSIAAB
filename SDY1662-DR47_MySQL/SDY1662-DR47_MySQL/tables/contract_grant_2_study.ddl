DROP TABLE IF EXISTS contract_grant_2_study;

CREATE TABLE contract_grant_2_study
(
  
  contract_grant_id INT NOT NULL
    COMMENT "Foreign key reference to CONTRACT_GRANT table",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to STUDY table",
  
  PRIMARY KEY (contract_grant_id, study_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates a funding source to a study.";

