DROP TABLE IF EXISTS lk_source_type;

CREATE TABLE lk_source_type
(
  
  name VARCHAR(30) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for describing MBAA (Luminex) values.";
