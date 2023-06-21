DROP TABLE IF EXISTS lk_hmdb;

CREATE TABLE lk_hmdb
(
  hmdb_id VARCHAR(15) NOT NULL
    COMMENT "",
 
  name VARCHAR(255) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (hmdb_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for the hmdb.";
