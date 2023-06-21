DROP TABLE IF EXISTS lab_test_panel_2_protocol;

CREATE TABLE lab_test_panel_2_protocol
(
  
  lab_test_panel_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to LAB_TEST_PANEL table",
  
  protocol_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to PROTOCOL table",
  
  PRIMARY KEY (lab_test_panel_accession, protocol_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates LAB_TEST_PANEL with PROTOCOL.";


