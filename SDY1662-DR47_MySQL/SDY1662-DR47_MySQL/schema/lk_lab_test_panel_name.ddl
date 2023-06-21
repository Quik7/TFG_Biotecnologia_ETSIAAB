DROP TABLE IF EXISTS lk_lab_test_panel_name;

CREATE TABLE lk_lab_test_panel_name
(
  
  name VARCHAR(125) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Preferred vocabulary for LAB_TEST_PANEL names.";
