DROP TABLE IF EXISTS lk_lab_test_name;

CREATE TABLE lk_lab_test_name
(
  
  name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",
  
  cdisc_lab_test_code VARCHAR(50)
    COMMENT "CDISC code for lab test",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  lab_test_panel_name VARCHAR(50)
    COMMENT "Lab test panel name",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Preferred vocabulary for LAB_TEST names.";
