DROP TABLE IF EXISTS lab_test_panel;

CREATE TABLE lab_test_panel
(
  
  lab_test_panel_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  name_preferred VARCHAR(125)
    COMMENT "Standardized name or idenitifier",
  
  name_reported VARCHAR(125)
    COMMENT "Name or identifier",
  
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to the STUDY table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (lab_test_panel_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "A collection of LAB_TESTs. Similar to an EXPERIMENT, but with a clinical assay focus.";

