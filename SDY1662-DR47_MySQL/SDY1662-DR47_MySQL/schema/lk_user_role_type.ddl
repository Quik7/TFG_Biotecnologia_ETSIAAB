DROP TABLE IF EXISTS lk_user_role_type;

CREATE TABLE lk_user_role_type
(
  
  name VARCHAR(2) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary to categorize the user role.";
