DROP TABLE IF EXISTS lk_protocol_type;

CREATE TABLE lk_protocol_type
(
  
  name VARCHAR(100) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for what is described by a PROTOCOL.";
