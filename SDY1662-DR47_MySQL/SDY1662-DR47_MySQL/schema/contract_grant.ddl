DROP TABLE IF EXISTS contract_grant;

CREATE TABLE contract_grant
(
  
  contract_grant_id INT NOT NULL
    COMMENT "Primary key",
  
  category VARCHAR(50) NOT NULL
    COMMENT "Type of entity",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  end_date DATE
    COMMENT "End date",
  
  external_id VARCHAR(200) NOT NULL
    COMMENT "ID from funding source",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  name VARCHAR(1000)
    COMMENT "Name or identifier",
  
  program_id INT NOT NULL
    COMMENT "Reference to the PROGRAM table",
  
  start_date DATE
    COMMENT "Start date",
  
  PRIMARY KEY (contract_grant_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Contract or grant that funded the research.";

CREATE INDEX idx_contract_program on contract_grant(program_id);
