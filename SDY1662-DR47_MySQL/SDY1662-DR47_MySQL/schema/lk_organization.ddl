DROP TABLE IF EXISTS lk_organization;

CREATE TABLE lk_organization
(
  
  name VARCHAR(125) NOT NULL
    COMMENT "Name or identifier",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for organization.";
