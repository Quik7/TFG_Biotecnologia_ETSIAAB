DROP TABLE IF EXISTS program_2_personnel;

CREATE TABLE program_2_personnel
(
  
  program_id INT NOT NULL
    COMMENT "Foreign key to the PROGRAM table",

  personnel_id INT NOT NULL
    COMMENT "Foreign key to the PERSONNEL table",

  role_type VARCHAR(2)
    COMMENT "Role for personnel",
  
  PRIMARY KEY (program_id,personnel_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates PROGRAM and PERSONNEL.";

CREATE INDEX idx_program_2_personnel on program_2_personnel(personnel_id,program_id);

