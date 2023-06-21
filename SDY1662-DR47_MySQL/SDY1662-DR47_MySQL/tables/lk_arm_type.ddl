DROP TABLE IF EXISTS lk_arm_type;

CREATE TABLE lk_arm_type
(
  name VARCHAR(255) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for arm type.";
