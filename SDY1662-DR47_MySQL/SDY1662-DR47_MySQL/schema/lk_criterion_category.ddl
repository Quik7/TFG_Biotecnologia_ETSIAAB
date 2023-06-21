DROP TABLE IF EXISTS lk_criterion_category;

CREATE TABLE lk_criterion_category
(
  
  name VARCHAR(40) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for INCLUSION_EXCLUSION";
