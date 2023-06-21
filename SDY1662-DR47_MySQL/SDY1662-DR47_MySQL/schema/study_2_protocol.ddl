DROP TABLE IF EXISTS study_2_protocol;

CREATE TABLE study_2_protocol
(
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  protocol_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the PROTOCOL table",
  
  PRIMARY KEY (study_accession, protocol_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates STUDY and PROTOCOL.";
