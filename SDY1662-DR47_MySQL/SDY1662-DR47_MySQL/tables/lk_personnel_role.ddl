DROP TABLE IF EXISTS lk_personnel_role;

CREATE TABLE lk_personnel_role
(
  
  name VARCHAR(40) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for the categories of roles for personnel on a given study, such as Principal Investigator (pi), Co-PI, etc that are defined in the study protocol.";
