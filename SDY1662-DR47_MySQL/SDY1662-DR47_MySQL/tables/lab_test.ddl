DROP TABLE IF EXISTS lab_test;

CREATE TABLE lab_test
(
  
  lab_test_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  biosample_accession VARCHAR(15)
    COMMENT "Foreign key Reference to the BIOSAMPLE table",
  
  lab_test_panel_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to LAB_TEST_PANEL table",
  
  name_preferred VARCHAR(50)
    COMMENT "Standardized name or idenitifier",
  
  name_reported VARCHAR(125)
    COMMENT "Name or identifier",
  
  reference_range_accession VARCHAR(15)
    COMMENT "Foreign key reference to REFERENCE_RANGE table",

  result_unit_preferred VARCHAR(50)
    COMMENT "Standardized value",
  
  result_unit_reported VARCHAR(40)
    COMMENT "Reported value",
  
  result_value_preferred FLOAT
    COMMENT "Standardized value",
  
  result_value_reported VARCHAR(250)
    COMMENT "Reported value",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (lab_test_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Laboratory process operating on a biological sample that produces a single value. Child of LAB TEST PANEL. Similar to EXPSAMPLE, but with a more clinical lab focus.";


