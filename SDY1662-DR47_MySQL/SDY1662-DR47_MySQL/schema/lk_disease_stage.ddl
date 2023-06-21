DROP TABLE IF EXISTS lk_disease_stage;

CREATE TABLE lk_disease_stage
(
  
  name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",

  description VARCHAR(1000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for disease stage.";
