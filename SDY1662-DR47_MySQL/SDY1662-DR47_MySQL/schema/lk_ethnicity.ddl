DROP TABLE IF EXISTS lk_ethnicity;

CREATE TABLE lk_ethnicity
(
  
  name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for Ethnicity that follows the census designation and OMB Directive 15.";
