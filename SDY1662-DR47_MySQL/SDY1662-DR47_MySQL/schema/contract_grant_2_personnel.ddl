DROP TABLE IF EXISTS contract_grant_2_personnel;

CREATE TABLE contract_grant_2_personnel
(
  
  contract_grant_id INT NOT NULL
    COMMENT "Foreign key reference to CONTRACT_GRANT table",
  
  personnel_id INT NOT NULL
    COMMENT "Foreign key reference to PERSONNEL table",

  role_type VARCHAR(2)
    COMMENT "Role for personnel",
  
  PRIMARY KEY (contract_grant_id, personnel_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates a funding source to the personnel who received the funding.";

create INDEX idx_contract_2_personnel on contract_grant_2_personnel(personnel_id,contract_grant_id)
