DROP TABLE IF EXISTS experiment_2_protocol;

CREATE TABLE experiment_2_protocol
(
  
  experiment_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPERIMENT table",
  
  protocol_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to PROTOCOL table",
  
  PRIMARY KEY (experiment_accession, protocol_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates EXPERIMENT with PROTOCOL table records.";

