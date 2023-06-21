DROP TABLE IF EXISTS lk_visibility_category;

CREATE TABLE lk_visibility_category
(
  
  name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for CONTRACT_GRANT visibility.";
