DROP TABLE IF EXISTS lk_unit_of_measure;

CREATE TABLE lk_unit_of_measure
(
  
  name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  type VARCHAR(50) NOT NULL
    COMMENT "Category",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for units of measure.";
