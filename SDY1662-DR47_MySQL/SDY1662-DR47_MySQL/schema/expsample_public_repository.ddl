DROP TABLE IF EXISTS expsample_public_repository;

CREATE TABLE expsample_public_repository
(
  result_id INT NOT NULL
    COMMENT "Primary key",
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign Key to the expsample table",
  
  repository_accession VARCHAR(20) NOT NULL
    COMMENT "Foreign key reference to a public repository",
  
  repository_name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",
  
  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "EXPSAMPLE_PUBLIC_REPOSITORY stores the public repository accessions linked to an EXPSAMPLE.";

CREATE INDEX idx_exp_public_repository on expsample_public_repository(expsample_accession, repository_accession);
